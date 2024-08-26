import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/db/address_table/country_table.dart';
import 'package:fs_bank/core/db/customer_table/customer_table_model.dart';
import 'package:fs_bank/core/utils/extensions.dart';
import 'package:fs_bank/features/address/domain/models/country_model/country_model.dart';
import 'package:fs_bank/features/address/domain/models/input_models/set_address_model.dart';
import 'package:fs_bank/features/home/presentation/blocs/static_bloc/static_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/enums/gender_type.dart';
import '../../../../core/bases/models/static_model/static_model.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/routers/routes_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../../../../main.dart';
import '../../../customer/domain/models/input_create_customer_model/input_create_customer_model.dart';
import '../../../customer/presentation/blocs/caching_bloc/caching_bloc.dart';
import '../../../customer/presentation/blocs/input_customer_cubit/input_customer_cubit.dart';
import '../../../customer/presentation/widgets/drop_down_static_widget.dart';
import '../widgets/drop_down_search_widget.dart';

class AddressView extends StatefulWidget {
  const AddressView({super.key});

  @override
  State<AddressView> createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late Stream<List<CountryTable>> streamCountries;
  late Stream<List<StateTable>> streamStates;
  late CustomerTable customerTable;
  @override
  void initState() {
    streamCountries = objectBox.getCountries();
    streamStates = objectBox.getStates();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: context.read<CachingBloc>(),
      listener: (context, CachingState state) {
        state.mapOrNull(
          setSuccess: (value) {
            showToast(context: context, message: value.message);
            context.goNamed(RoutesNames.homeRoute);
          },
        );
      },
      child: BlocBuilder(
        bloc: context.read<InputCustomerCubit>(),
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Address",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            // backgroundColor: ColorManager.background,
            body: Form(
              key: _formKey,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Country",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    SizedBox(width: AppSizeW.s4),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(width: AppSizeW.s4),
                                        Baseline(
                                          baseline: AppSizeH.s20,
                                          baselineType: TextBaseline.alphabetic,
                                          child: Text(
                                            "*",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: AppSizeH.s7),
                                StreamBuilder<List<CountryTable>>(
                                  stream: streamCountries,
                                  builder: (context, snapshot) {
                                    if (!snapshot.hasData) {
                                      return DropDownStaticWidget(
                                        validator: (value) {
                                          if (value == null) {
                                            return 'Please select national.';
                                          }
                                          return null;
                                        },
                                        items: const [],
                                        label: "National",
                                      );
                                    } else {
                                      return DropDownSearchWidget(
                                        items: snapshot.data!
                                            .map(
                                              (e) => CountryModel(
                                                  id: e.countryId,
                                                  code: e.code,
                                                  name: CountryNameModel(
                                                      ar: e.nameAr,
                                                      en: e.nameEn)),
                                            )
                                            .toList(),
                                        label: "Country",
                                        validator: (value) {
                                          if (value == null) {
                                            return 'Please select country.';
                                          }
                                          return null;
                                        },
                                        hintSearchText: "Search a country ..",
                                        onChanged: (value) {
                                          context
                                              .read<InputCustomerCubit>()
                                              .setCountry(value);
                                          context
                                              .read<InputCustomerCubit>()
                                              .setState(null);
                                        },
                                        selectedValue: context
                                            .read<InputCustomerCubit>()
                                            .countrySelected,
                                      );
                                    }
                                  },
                                ),

                                // BlocBuilder(
                                //   bloc: context.read<StaticBloc>(),
                                //   builder: (context, state) {
                                //     return DropDownSearchWidget(
                                //       items:
                                //           context.read<StaticBloc>().countries,
                                //       label: "Country",
                                //       validator: (value) {
                                //         if (value == null) {
                                //           return 'Please select country.';
                                //         }
                                //         return null;
                                //       },
                                //       hintSearchText: "Search a country ..",
                                //       onChanged: (value) {
                                // context
                                //     .read<InputCustomerCubit>()
                                //     .setCountry(value);
                                // context
                                //     .read<InputCustomerCubit>()
                                //     .setState(null);
                                //       },
                                //       selectedValue: context
                                //           .read<InputCustomerCubit>()
                                //           .countrySelected,
                                //     );
                                //   },
                                // ),
                              ],
                            ),
                            SizedBox(height: AppSizeH.s6),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "State",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    SizedBox(width: AppSizeW.s4),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(width: AppSizeW.s4),
                                        Baseline(
                                          baseline: AppSizeH.s20,
                                          baselineType: TextBaseline.alphabetic,
                                          child: Text(
                                            "*",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: AppSizeH.s7),
                                StreamBuilder<List<StateTable>>(
                                  stream: streamStates,
                                  builder: (context, snapshot) {
                                    if (!snapshot.hasData) {
                                      return DropDownStaticWidget(
                                        validator: (value) {
                                          if (value == null) {
                                            return 'Please select state.';
                                          }
                                          return null;
                                        },
                                        items: const [],
                                        label: "State",
                                      );
                                    } else {
                                      // List<StateTable> states = [];
                                      // states.addAll();
                                      return DropDownSearchWidget(
                                        validator: (value) {
                                          if (value == null) {
                                            return 'Please select state.';
                                          }
                                          return null;
                                        },
                                        items: context
                                                    .read<InputCustomerCubit>()
                                                    .countrySelected ==
                                                null
                                            ? []
                                            : snapshot.data!
                                                    .where((e) =>
                                                        e.countryId ==
                                                        (context
                                                                .read<
                                                                    InputCustomerCubit>()
                                                                .countrySelected
                                                                ?.id ??
                                                            0))
                                                    .toList()
                                                    .isEmpty
                                                ? [
                                                    context
                                                            .read<
                                                                InputCustomerCubit>()
                                                            .countrySelected ??
                                                        CountryModel()
                                                  ]
                                                : snapshot.data!
                                                    .where((e) =>
                                                        e.countryId ==
                                                        (context
                                                                .read<
                                                                    InputCustomerCubit>()
                                                                .countrySelected
                                                                ?.id ??
                                                            0))
                                                    .toList()
                                                    .map(
                                                    (e) {
                                                      return CountryModel(
                                                          id: e.stateId,
                                                          code: e.code,
                                                          countryId: e
                                                              .countryId,
                                                          name:
                                                              CountryNameModel(
                                                                  ar: e.nameAr,
                                                                  en: e
                                                                      .nameEn));
                                                    },
                                                  ).toList(),
                                        label: "State",
                                        hintSearchText: "Search a state ..",
                                        onChanged: (value) {
                                          context
                                              .read<InputCustomerCubit>()
                                              .setState(value);
                                        },
                                        selectedValue: context
                                            .read<InputCustomerCubit>()
                                            .stateSelected,
                                      );
                                    }
                                  },
                                ),

                                // BlocBuilder(
                                //   bloc: context.read<StaticBloc>(),
                                //   builder: (context, state) {
                                // return DropDownSearchWidget(
                                //   validator: (value) {
                                //     if (value == null) {
                                //       return 'Please select state.';
                                //     }
                                //     return null;
                                //   },
                                //   items: context
                                //               .read<InputCustomerCubit>()
                                //               .countrySelected ==
                                //           null
                                //       ? []
                                //       : !context
                                //               .read<StaticBloc>()
                                //               .states
                                //               .any((e) =>
                                //                   e.countryId ==
                                //                   (context
                                //                           .read<
                                //                               InputCustomerCubit>()
                                //                           .countrySelected
                                //                           ?.id ??
                                //                       0))
                                //           ? [
                                //               context
                                //                       .read<
                                //                           InputCustomerCubit>()
                                //                       .countrySelected ??
                                //                   CountryModel()
                                //             ]
                                //           : context
                                //               .read<StaticBloc>()
                                //               .states
                                //               .where(
                                //                 (e) =>
                                //                     e.countryId ==
                                //                     (context
                                //                             .read<
                                //                                 InputCustomerCubit>()
                                //                             .countrySelected
                                //                             ?.id ??
                                //                         0),
                                //               )
                                //               .toList(),
                                //   label: "State",
                                //   hintSearchText: "Search a state ..",
                                //   onChanged: (value) {
                                //     context
                                //         .read<InputCustomerCubit>()
                                //         .setState(value);
                                //   },
                                //   selectedValue: context
                                //       .read<InputCustomerCubit>()
                                //       .stateSelected,
                                // );
                                //   },
                                // ),
                              ],
                            ),
                            SizedBox(height: AppSizeH.s6),
                            InputAddressField(
                              isRequired: true,
                              controller: context
                                  .read<InputCustomerCubit>()
                                  .areaController,
                              title: "Area",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter area';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: AppSizeH.s6),
                            InputAddressField(
                              isRequired: true,
                              controller: context
                                  .read<InputCustomerCubit>()
                                  .streetController,
                              title: "Street",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter street';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: AppSizeH.s6),
                            InputAddressField(
                              isRequired: true,
                              controller: context
                                  .read<InputCustomerCubit>()
                                  .detailsController,
                              title: "Details",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter details';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: AppSizeH.s6),
                            InputAddressField(
                              isRequired: true,
                              type: TextInputType.number,
                              controller: context
                                  .read<InputCustomerCubit>()
                                  .phoneNumberAddressController,
                              title: "Phone number",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Phone number';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: AppSizeH.s6),
                            InputAddressField(
                              isRequired: true,
                              controller: context
                                  .read<InputCustomerCubit>()
                                  .addressTypeController,
                              title: "Address type",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Address type';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: AppSizeH.s6),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(AppSizeW.s16),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(ColorManager.white),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(AppSizeR.s8),
                                      side: BorderSide(
                                          color: ColorManager.primary)))),
                          onPressed: () {
                            context.pop();
                          },
                          child: Text(
                            "Back",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                        SizedBox(width: AppSizeW.s8),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    context
                                        .read<InputCustomerCubit>()
                                        .setAddressModel();
                                    objectBox.addCustomer(InputCreateCustomerModel(
                                        gender: context.read<InputCustomerCubit>().title?.name == TitleType.Mr.name
                                            ? GenderType.male.name
                                            : GenderType.female.name,
                                        title: context.read<InputCustomerCubit>().title?.name ??
                                            TitleType.Mr.name,
                                        firstName: context.read<InputCustomerCubit>().firstName ??
                                            const InputModel(),
                                        lastName: context.read<InputCustomerCubit>().lastName ??
                                            const InputModel(),
                                        fatherName: context.read<InputCustomerCubit>().fatherName ??
                                            const InputModel(),
                                        motherName:
                                            context.read<InputCustomerCubit>().motherName ??
                                                const InputModel(),
                                        dateOfBirth: context
                                            .read<InputCustomerCubit>()
                                            .dateOfBirthController
                                            .text,
                                        placeOfBirth: context
                                            .read<InputCustomerCubit>()
                                            .placeOfBirthController
                                            .text,
                                        phoneNumber: context
                                            .read<InputCustomerCubit>()
                                            .phoneNumberController
                                            .text,
                                        mobileNumber: context.read<InputCustomerCubit>().mobileNumberController.text,
                                        email: context.read<InputCustomerCubit>().emailController.text,
                                        templateId: context.read<InputCustomerCubit>().template?.id ?? 0,
                                        status: context.read<InputCustomerCubit>().status ?? true,
                                        createdAt: DateTime.now().toFormattedString(),
                                        attributes: context.read<InputCustomerCubit>().attributes,
                                        attachments: context.read<InputCustomerCubit>().attachments,
                                        address: context.read<InputCustomerCubit>().addressModel ?? const SetAddressModel()));
                                    showToast(
                                        context: context,
                                        message: "Created successfully");
                                    context.goNamed(RoutesNames.homeRoute);
                                    // context.read<CachingBloc>().add(CachingEvent.cachingCustomerBasicInfo(
                                    //     customer: InputCreateCustomerModel(
                                    //         createdAt: DateTime.now()
                                    //             .toUtc()
                                    //             .toString(),
                                    //         templateId: context
                                    //                 .read<InputCustomerCubit>()
                                    //                 .template
                                    //                 ?.id ??
                                    //             0,
                                    //         title: context
                                    //                 .read<InputCustomerCubit>()
                                    //                 .title
                                    //                 ?.name ??
                                    //             TitleType.Mr.name,
                                    //         gender: context.read<InputCustomerCubit>().gender ??
                                    //             GenderType.male.name,
                                    //         firstName: context
                                    //                 .read<InputCustomerCubit>()
                                    //                 .firstName ??
                                    //             const InputModel(),
                                    //         lastName:
                                    //             context.read<InputCustomerCubit>().lastName ??
                                    //                 const InputModel(),
                                    //         fatherName: context.read<InputCustomerCubit>().fatherName ?? const InputModel(),
                                    //         motherName: context.read<InputCustomerCubit>().motherName ?? const InputModel(),
                                    //         dateOfBirth: context.read<InputCustomerCubit>().dateOfBirthController.text,
                                    //         placeOfBirth: context.read<InputCustomerCubit>().placeOfBirthController.text,
                                    //         mobileNumber: context.read<InputCustomerCubit>().mobileNumberController.text,
                                    //         status: true,
                                    //         phoneNumber: context.read<InputCustomerCubit>().phoneNumberController.text,
                                    //         email: context.read<InputCustomerCubit>().emailController.text.isEmpty ? null : context.read<InputCustomerCubit>().emailController.text,
                                    //         attributes: context.read<InputCustomerCubit>().filtersAttributes(),
                                    //         address: context.read<InputCustomerCubit>().addressModel ?? const SetAddressModel(),
                                    //         attachments: context.read<InputCustomerCubit>().attachments)));
                                  }
                                },
                                child: const Text("Set address"))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class InputAddressField extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final String title;
  final bool isRequired;
  final TextInputType? type;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  const InputAddressField({
    super.key,
    required this.controller,
    this.hint,
    required this.title,
    this.type,
    this.inputFormatters,
    this.validator,
    required this.isRequired,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(width: AppSizeW.s4),
            isRequired
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: AppSizeW.s4),
                      Baseline(
                        baseline: AppSizeH.s20,
                        baselineType: TextBaseline.alphabetic,
                        child: Text(
                          "*",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ],
                  )
                : const SizedBox()
          ],
        ),
        SizedBox(height: AppSizeH.s7),
        TextFormField(
          keyboardType: type,
          controller: controller,
          style: Theme.of(context).textTheme.headlineLarge,
          inputFormatters: inputFormatters,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(hintText: hint),
        ),
      ],
    );
  }
}
