import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/bases/enums/input_type.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/core/utils/extensions.dart';
import 'package:fs_bank/features/attributes/domain/models/set_attributes_model/set_attribute_model.dart';
import 'package:fs_bank/features/attributes/presentation/blocs/all_attributes_bloc/all_attributes_bloc.dart';
import 'package:fs_bank/features/attributes/presentation/blocs/attributes_bloc/attributes_bloc.dart';
import 'package:fs_bank/features/customer/presentation/widgets/drop_down_string_widget.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/enums/gender_type.dart';
import '../../../../core/routers/routes_manager.dart';
import '../../../../core/themes/theme_manager.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../../../customer/domain/models/input_create_customer_model/input_create_customer_model.dart';
import '../../../customer/presentation/blocs/caching_bloc/caching_bloc.dart';
import '../../../customer/presentation/blocs/input_customer_cubit/input_customer_cubit.dart';
import '../../domain/models/attributes_model/attributes_model.dart';
import '../../domain/models/set_attachments_model/set_attachments_model.dart';
import '../blocs/set_attribute_bloc/set_attribute_bloc.dart';

class AttributesView extends StatefulWidget {
  final int templateId;
  const AttributesView({super.key, required this.templateId});

  @override
  State<AttributesView> createState() => _AttributesViewState();
}

class _AttributesViewState extends State<AttributesView> {
  // late InputValueAttributesCubit inputValueAttributesCubit;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<AttributesModel> attributes = [];
  @override
  void initState() {
    // inputValueAttributesCubit = instance<InputValueAttributesCubit>();
    attributes = context
        .read<AllAttributesBloc>()
        .allAttributes
        .where((e) => e.template.id == widget.templateId)
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<InputCustomerCubit>(),
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Attributes",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            backgroundColor: ColorManager.background,
            body: attributes.isEmpty
                ? Center(
                    child: Text(
                      "Please choose another template because no attributes in this template yet",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  )
                : Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: attributes.first.attributes.map(
                                (e) {
                                  return e.type == InputType.file
                                      ? const SizedBox()
                                      : Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: AppSizeW.s16,
                                              vertical: AppSizeH.s6),
                                          child: Container(
                                              padding:
                                                  EdgeInsets.all(AppSizeW.s8),
                                              decoration: BoxDecoration(
                                                  color: ColorManager.white,
                                                  // boxShadow: [
                                                  //   BoxShadow(
                                                  //       offset:
                                                  //           const Offset(0, 4),
                                                  //       color: ColorManager.grey3,
                                                  //       blurRadius: AppSizeR.s5)
                                                  // ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          AppSizeR.s12)),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        e.label,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleLarge,
                                                      ),
                                                      SizedBox(
                                                          width: AppSizeW.s4),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          SizedBox(
                                                              width:
                                                                  AppSizeW.s4),
                                                          e.isRequired
                                                              ? Baseline(
                                                                  baseline:
                                                                      AppSizeH
                                                                          .s20,
                                                                  baselineType:
                                                                      TextBaseline
                                                                          .alphabetic,
                                                                  child: Text(
                                                                    "*",
                                                                    style: Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .titleLarge,
                                                                  ),
                                                                )
                                                              : const SizedBox(),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  // SizedBox(height: AppSizeH.s7),

                                                  Divider(
                                                      color:
                                                          ColorManager.grey3),
                                                  getByType(
                                                      context,
                                                      context.read<
                                                          InputCustomerCubit>(),
                                                      e),
                                                ],
                                              )),
                                        );
                                },
                              ).toList(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(AppSizeW.s16),
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                        ColorManager.white),
                                    shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                AppSizeR.s8),
                                            side: BorderSide(
                                                color: ColorManager.primary)))),
                                onPressed: () {
                                  context.pop();
                                },
                                child: Text(
                                  "Back",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              ),
                              SizedBox(width: AppSizeW.s8),
                              Expanded(
                                  child: ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          context.goNamed(
                                              RoutesNames
                                                  .attachmentsCustomersRoute,
                                              pathParameters: {
                                                "templateId": context
                                                        .read<
                                                            InputCustomerCubit>()
                                                        .template
                                                        ?.id
                                                        .toString() ??
                                                    "0"
                                              },
                                              extra: context
                                                  .read<InputCustomerCubit>());
                                          // context
                                          //     .read<CachingBloc>()
                                          //     .add(CachingEvent
                                          //         .cachingCustomerBasicInfo(
                                          //             customer:
                                          //                 InputCreateCustomerModel(
                                          //       createdAt: DateTime.now()
                                          //           .toUtc()
                                          //           .toString(),
                                          //       templateId: context
                                          //               .read<
                                          //                   InputCustomerCubit>()
                                          //               .template
                                          //               ?.id ??
                                          //           0,
                                          //       title: context
                                          //               .read<
                                          //                   InputCustomerCubit>()
                                          //               .title
                                          //               ?.name ??
                                          //           TitleType.Mr.name,
                                          //       gender: context
                                          //               .read<
                                          //                   InputCustomerCubit>()
                                          //               .gender ??
                                          //           GenderType.male.name,
                                          //       firstName: context
                                          //               .read<
                                          //                   InputCustomerCubit>()
                                          //               .firstName ??
                                          //           const InputModel(),
                                          //       lastName: context
                                          //               .read<
                                          //                   InputCustomerCubit>()
                                          //               .lastName ??
                                          //           const InputModel(),
                                          //       fatherName: context
                                          //               .read<
                                          //                   InputCustomerCubit>()
                                          //               .fatherName ??
                                          //           const InputModel(),
                                          //       motherName: context
                                          //               .read<
                                          //                   InputCustomerCubit>()
                                          //               .motherName ??
                                          //           const InputModel(),
                                          //       dateOfBirth: context
                                          //           .read<
                                          //               InputCustomerCubit>()
                                          //           .dateOfBirthController
                                          //           .text,
                                          //       placeOfBirth: context
                                          //           .read<
                                          //               InputCustomerCubit>()
                                          //           .placeOfBirthController
                                          //           .text,
                                          //       mobileNumber: context
                                          //           .read<
                                          //               InputCustomerCubit>()
                                          //           .mobileNumberController
                                          //           .text,
                                          //       status: true,
                                          //       phoneNumber: context
                                          //           .read<
                                          //               InputCustomerCubit>()
                                          //           .phoneNumberController
                                          //           .text,
                                          //       email: context
                                          //               .read<
                                          //                   InputCustomerCubit>()
                                          //               .emailController
                                          //               .text
                                          //               .isEmpty
                                          //           ? null
                                          //           : context
                                          //               .read<
                                          //                   InputCustomerCubit>()
                                          //               .emailController
                                          //               .text,
                                          //       attributes: context
                                          //           .read<
                                          //               InputCustomerCubit>()
                                          //           .filtersAttributes(),
                                          //     )));

                                          // setAttributeBloc.add(
                                          //     SetAttributeEvent.setAttribute(
                                          // setAttributeModel:
                                          //     SetAttributeModel(
                                          //         customerId:
                                          //             53,
                                          //         attributes: context
                                          //             .read<
                                          //                 InputCustomerCubit>()
                                          //             .filtersAttributes())));
                                        }
                                      },
                                      child: const Text("Set attributes"))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ));
      },
    );
  }
}

Widget getByType(BuildContext context,
    InputCustomerCubit inputValueAttributesCubit, AttributesDataModel attr) {
  switch (attr.type) {
    case InputType.checkbox:
      return FormField<bool>(
        builder: (state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: attr.value.entries.map(
                  (e) {
                    return Row(
                      children: [
                        Checkbox(
                          value: inputValueAttributesCubit.getCheckBoxValue(
                              attr.id, e.value),
                          onChanged: (value) {
                            inputValueAttributesCubit.AddAttributeCheckBox(
                                attr.id, e.value);
                          },
                        ),
                        Text(e.value)
                      ],
                    );
                  },
                ).toList(),
              ),
              !inputValueAttributesCubit.checkValue(attr.id)
                  ? Text(
                      state.errorText ?? '',
                      style: TextStyle(
                          fontFamily: FontConstants.fontFamilyPTSans,
                          fontSize: AppSizeSp.s12,
                          color: ColorManager.persimmon),
                    )
                  : const SizedBox(),
            ],
          );
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: !attr.isRequired
            ? null
            : (value) {
                if (!inputValueAttributesCubit.checkValue(attr.id)) {
                  return 'You need to check ${attr.label}';
                } else {
                  return null;
                }
              },
      );
    case InputType.text:
      return TextFormField(
        style: Theme.of(context).textTheme.headlineLarge,
        validator: !attr.isRequired
            ? null
            : (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter ${attr.label}';
                }
                return null;
              },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (value) {
          inputValueAttributesCubit.setTextAttribute(id: attr.id, value: value);
        },
        decoration: InputDecoration(hintText: attr.label),
      );
    case InputType.date:
      final dateTimeController = TextEditingController();
      dateTimeController.text = inputValueAttributesCubit.attributes
          .firstWhere(
            (e) => e.attributeId == attr.id,
            orElse: () => const AttributeModel(),
          )
          .value;
      return TextFormField(
        controller: dateTimeController,
        readOnly: true,
        onTap: () async {
          DateTime? selectedDate = await showDatePicker(
            context: context,
            initialDatePickerMode: DatePickerMode.year,
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );
          dateTimeController.text = selectedDate?.toFormattedString() ?? "";
          inputValueAttributesCubit.setDobAttributes(
              attr.id, dateTimeController.text);
        },
        validator: !attr.isRequired
            ? null
            : (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter ${attr.label}';
                }
                return null;
              },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: Theme.of(context).textTheme.headlineLarge,
        decoration: InputDecoration(hintText: attr.label),
      );
    case InputType.number:
      return TextFormField(
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headlineLarge,
        validator: !attr.isRequired
            ? null
            : (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter ${attr.label}';
                }
                return null;
              },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (value) {
          inputValueAttributesCubit.setTextAttribute(id: attr.id, value: value);
        },
        decoration: InputDecoration(hintText: attr.label),
      );
    case InputType.radio:
      return FormField<bool>(
        builder: (state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: attr.value.entries.map(
                  (e) {
                    return Row(
                      children: [
                        Radio<String>(
                          groupValue:
                              inputValueAttributesCubit.getRadioValue(attr.id),
                          value: e.value,
                          onChanged: (value) {
                            inputValueAttributesCubit.AddAttributeSelectRadio(
                                attr.id, e.value);
                          },
                        ),
                        Expanded(child: Text(e.value))
                      ],
                    );
                  },
                ).toList(),
              ),
              !inputValueAttributesCubit.checkValue(attr.id)
                  ? Text(
                      state.errorText ?? '',
                      style: TextStyle(
                          fontFamily: FontConstants.fontFamilyPTSans,
                          fontSize: AppSizeSp.s12,
                          color: ColorManager.persimmon),
                    )
                  : const SizedBox(),
            ],
          );
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: !attr.isRequired
            ? null
            : (value) {
                if (!inputValueAttributesCubit.checkValue(attr.id)) {
                  return 'You need to check ${attr.label}';
                } else {
                  return null;
                }
              },
      );
    case InputType.select:
      return DropDownStringWidget(
          onChanged: (value) {
            inputValueAttributesCubit.AddAttributeSelectRadio(
                attr.id, value ?? "");
          },
          validator: !attr.isRequired
              ? null
              : (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select ${attr.label}';
                  }
                  return null;
                },
          items: attr.value.entries
              .map(
                (e) => e.value.toString(),
              )
              .toList(),
          label: attr.label);
    case InputType.file:
      return FormField<bool>(
        builder: (validateState) {
          return BlocBuilder(
            bloc: inputValueAttributesCubit,
            builder: (context, state) {
              bool uploaded = inputValueAttributesCubit.attachments
                  .any((element) => element.attributeId == attr.id);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(ColorManager.white),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(AppSizeR.s6),
                                      side: BorderSide(
                                          color: uploaded
                                              ? ColorManager.emerald
                                              : ColorManager.primary)))),
                          onPressed: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();

                            if (result != null) {
                              // Get the file from the result
                              // File file = File(result.files.single.path!);

                              // // Read the file as bytes
                              // List<int> fileBytes = await file.readAsBytes();
                              inputValueAttributesCubit.setAttachments(
                                SetAttachmentModel(
                                    name: attr.label,
                                    isUploaded: false,
                                    // file: base64Encode(fileBytes),
                                    file: result.files.single.path!,
                                    attributeId: attr.id),
                              );
                            }
                          },
                          label: Text(
                            uploaded
                                ? "uploaded this ${attr.label}"
                                : "upload this ${attr.label}",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          icon: Icon(
                            Icons.upload,
                            size: AppSizeSp.s16,
                            color: ColorManager.primary,
                          ),
                        ),
                      ),
                      SizedBox(width: AppSizeW.s6),
                      uploaded
                          ? ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                      ColorManager.persimmon),
                                  shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              AppSizeR.s6)))),
                              onPressed: () async {
                                inputValueAttributesCubit
                                    .removeAttachment(attr.id);
                              },
                              child: Icon(
                                Icons.delete,
                                size: AppSizeSp.s16,
                                color: ColorManager.white,
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  !inputValueAttributesCubit.checkAttachment(attr.id)
                      ? Padding(
                          padding: EdgeInsets.only(
                              top: AppSizeH.s8, bottom: AppSizeH.s4),
                          child: Text(
                            validateState.errorText ?? '',
                            style: TextStyle(
                                fontFamily: FontConstants.fontFamilyPTSans,
                                fontSize: AppSizeSp.s12,
                                color: ColorManager.persimmon),
                          ),
                        )
                      : const SizedBox(),
                ],
              );
            },
          );
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: !attr.isRequired
            ? null
            : (value) {
                if (!inputValueAttributesCubit.checkAttachment(attr.id)) {
                  return 'You need to upload ${attr.label}';
                } else {
                  return null;
                }
              },
      );
    default:
      return const SizedBox();
  }
}

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField(
      {super.key,
      Widget? title,
      super.onSaved,
      super.validator,
      bool super.initialValue = false,
      bool autovalidate = false})
      : super(builder: (FormFieldState<bool> state) {
          return CheckboxListTile(
            dense: state.hasError,
            title: title,
            value: state.value,
            onChanged: state.didChange,
            subtitle: state.hasError
                ? Builder(
                    builder: (BuildContext context) => Text(
                      state.errorText ?? "",
                      style:
                          TextStyle(color: Theme.of(context).colorScheme.error),
                    ),
                  )
                : null,
            controlAffinity: ListTileControlAffinity.leading,
          );
        });
}
