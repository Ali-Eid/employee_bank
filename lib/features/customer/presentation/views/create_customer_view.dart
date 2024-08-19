import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/bases/enums/gender_type.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/core/widgets/toast_widget.dart';
import 'package:fs_bank/features/customer/domain/models/input_create_customer_model/input_create_customer_model.dart';
import 'package:fs_bank/features/customer/presentation/blocs/caching_bloc/caching_bloc.dart';
import 'package:fs_bank/features/customer/presentation/blocs/customer_bloc/customer_bloc.dart';
import 'package:fs_bank/features/customer/presentation/widgets/date_time_field_widget.dart';
import 'package:fs_bank/features/home/presentation/blocs/static_bloc/static_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../blocs/input_customer_cubit/input_customer_cubit.dart';
import '../widgets/drop_down_static_widget.dart';
import '../widgets/drop_down_string_widget.dart';

class CreateCustomerView extends StatefulWidget {
  const CreateCustomerView({super.key});

  @override
  State<CreateCustomerView> createState() => _CreateCustomerViewState();
}

class _CreateCustomerViewState extends State<CreateCustomerView> {
  final GlobalKey<FormState> _arFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _enFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _detailsFormKey = GlobalKey<FormState>();
  final PageController _pageController = PageController();
  final PageController _pageControllerRoot = PageController();
  var titleList = [TitleType.Mr.name, TitleType.Ms.name];
  late InputCustomerCubit inputCustomerCubit;
  // late CustomerBloc customerBloc;
  bool isBack = false;
  int _currentPage = 0;
  int _currentPageRoot = 0;

  @override
  void initState() {
    // customerBloc = instance<CustomerBloc>();
    inputCustomerCubit = instance<InputCustomerCubit>();
    inputCustomerCubit.setTitle(titleList.first);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create Customer",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: BlocBuilder(
        bloc: inputCustomerCubit,
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPageRoot = page;
                      isBack = page > 0;
                    });
                  },
                  controller: _pageControllerRoot,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Title",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                ],
                              ),
                              SizedBox(height: AppSizeH.s7),
                              DropDownStringWidget(
                                  items: titleList,
                                  selectedValue: inputCustomerCubit.title?.name,
                                  onChanged: (title) {
                                    inputCustomerCubit.setTitle(title);
                                  },
                                  label: "Title"),
                            ],
                          ),
                        ),
                        SizedBox(height: AppSizeH.s24),
                        Expanded(
                          child: PageView(
                            onPageChanged: (int page) {
                              setState(() {
                                _currentPage = page;
                                isBack = page > 0;
                              });
                            },
                            controller: _pageController,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: AppSizeW.s16),
                                          decoration: BoxDecoration(
                                              color: ColorManager.primary,
                                              borderRadius:
                                                  BorderRadiusDirectional.only(
                                                      topEnd: Radius.circular(
                                                          AppSizeR.s16))),
                                          child: Text(
                                            "Info Arabic",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(
                                                    fontSize: AppSizeSp.s16),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: AppSizeH.s12),
                                    Form(
                                      key: _arFormKey,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: AppSizeW.s16),
                                        child: Column(
                                          children: [
                                            InputFieldText(
                                              controller: inputCustomerCubit
                                                  .firstNameAr,
                                              title: "First Name (Arabic)",
                                              hint: "First Name (Arabic)",
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter First Name.';
                                                }
                                                return null;
                                              },
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp(r'[ء-ي\s]')),
                                              ],
                                            ),
                                            SizedBox(height: AppSizeH.s16),
                                            InputFieldText(
                                              controller:
                                                  inputCustomerCubit.lastNameAr,
                                              title: "Last Name (Arabic)",
                                              hint: "Last Name (Arabic)",
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter Last Name.';
                                                }
                                                return null;
                                              },
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp(r'[ء-ي\s]')),
                                              ],
                                            ),
                                            SizedBox(height: AppSizeH.s16),
                                            InputFieldText(
                                              controller: inputCustomerCubit
                                                  .fatherNameAr,
                                              title: "Father's Name (Arabic)",
                                              hint: "Father's Name (Arabic)",
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter Father\'s Name.';
                                                }
                                                return null;
                                              },
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp(r'[ء-ي\s]')),
                                              ],
                                            ),
                                            SizedBox(height: AppSizeH.s16),
                                            InputFieldText(
                                              controller: inputCustomerCubit
                                                  .motherNameAr,
                                              title: "Mother's Name (Arabic)",
                                              hint: "Mother's Name (Arabic)",
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter Mother\'s Name.';
                                                }
                                                return null;
                                              },
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp(r'[ء-ي\s]')),
                                              ],
                                            ),
                                            SizedBox(height: AppSizeH.s16),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: AppSizeW.s16),
                                          decoration: BoxDecoration(
                                              color: ColorManager.primary,
                                              borderRadius:
                                                  BorderRadiusDirectional.only(
                                                      topEnd: Radius.circular(
                                                          AppSizeR.s16))),
                                          child: Text(
                                            "Info English",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(
                                                    fontSize: AppSizeSp.s16),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: AppSizeH.s12),
                                    Form(
                                      key: _enFormKey,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: AppSizeW.s16),
                                        child: Column(
                                          children: [
                                            InputFieldText(
                                              controller: inputCustomerCubit
                                                  .firstNameEn,
                                              title: "First Name (English)",
                                              hint: "First Name (English)",
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter First Name.';
                                                }
                                                return null;
                                              },
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(
                                                        RegExp(r'[a-zA-Z\s]')),
                                              ],
                                            ),
                                            SizedBox(height: AppSizeH.s16),
                                            InputFieldText(
                                              controller:
                                                  inputCustomerCubit.lastNameEn,
                                              title: "Last Name (English)",
                                              hint: "Last Name (English)",
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter Last Name.';
                                                }
                                                return null;
                                              },
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(
                                                        RegExp(r'[a-zA-Z\s]')),
                                              ],
                                            ),
                                            SizedBox(height: AppSizeH.s16),
                                            InputFieldText(
                                              controller: inputCustomerCubit
                                                  .fatherNameEn,
                                              title: "Father's Name (English)",
                                              hint: "Father's Name (English)",
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter Father\'s Name.';
                                                }
                                                return null;
                                              },
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(
                                                        RegExp(r'[a-zA-Z\s]')),
                                              ],
                                            ),
                                            SizedBox(height: AppSizeH.s16),
                                            InputFieldText(
                                              controller: inputCustomerCubit
                                                  .motherNameEn,
                                              title: "Mother's Name (English)",
                                              hint: "Mother's Name (English)",
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter Mother\'s Name.';
                                                }
                                                return null;
                                              },
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(
                                                        RegExp(r'[a-zA-Z\s]')),
                                              ],
                                            ),
                                            SizedBox(height: AppSizeH.s16),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      child: Form(
                        key: _detailsFormKey,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                          child: Column(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Date Birth",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: AppSizeH.s7),
                                  DateTimeFieldWidget(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please select Date birth.';
                                        }
                                        return null;
                                      },
                                      onTap: () async {
                                        DateTime? selectedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDatePickerMode:
                                              DatePickerMode.year,
                                          initialEntryMode:
                                              DatePickerEntryMode.calendarOnly,
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime.now(),
                                        );
                                        inputCustomerCubit.setDob(selectedDate);
                                      },
                                      controller: inputCustomerCubit
                                          .dateOfBirthController,
                                      hint: "Date Birth"),
                                ],
                              ),
                              SizedBox(height: AppSizeH.s16),
                              InputFieldText(
                                controller:
                                    inputCustomerCubit.placeOfBirthController,
                                title: "Place of birth",
                                hint: "Place of birth",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Date Place of birth.';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: AppSizeH.s16),
                              InputFieldText(
                                controller:
                                    inputCustomerCubit.phoneNumberController,
                                title: "Phone number",
                                type: TextInputType.number,
                                hint: "Phone number",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Phone number.';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: AppSizeH.s16),
                              InputFieldText(
                                controller:
                                    inputCustomerCubit.mobileNumberController,
                                title: "Mobile number",
                                type: TextInputType.number,
                                hint: "Mobile number",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Mobile number.';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: AppSizeH.s16),
                              InputFieldText(
                                controller: inputCustomerCubit.emailController,
                                title: "Email",
                                hint: "Email",
                                type: TextInputType.emailAddress,
                              ),
                              SizedBox(height: AppSizeH.s16),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Templates",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  SizedBox(height: AppSizeH.s7),
                                  BlocBuilder(
                                    bloc: context.read<StaticBloc>(),
                                    builder: (context, state) {
                                      return DropDownStaticWidget(
                                        validator: (value) {
                                          if (value == null) {
                                            return 'Please select Template.';
                                          }
                                          return null;
                                        },
                                        items: context
                                            .read<StaticBloc>()
                                            .templates,
                                        label: "Templates",
                                        onChanged: (value) {
                                          inputCustomerCubit.setTemplate(value);
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                  child: Row(
                    children: [
                      isBack
                          ? Row(
                              children: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                          ColorManager.white),
                                      shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      AppSizeR.s8),
                                              side: BorderSide(
                                                  color:
                                                      ColorManager.primary)))),
                                  onPressed: _currentPageRoot >= 1
                                      ? _previousPageRoot
                                      : _previousPage,
                                  child: Text(
                                    "Back",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                ),
                                SizedBox(width: AppSizeW.s8)
                              ],
                            )
                          : const SizedBox(),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_arFormKey.currentState?.validate() ?? false) {
                              _nextPage();
                            } else if (_enFormKey.currentState?.validate() ??
                                false) {
                              _nextPage();
                            } else if (_detailsFormKey.currentState
                                    ?.validate() ??
                                false) {
                              // _nextPage();
                              inputCustomerCubit.setFirstName(
                                  inputCustomerCubit.firstNameAr.text,
                                  inputCustomerCubit.firstNameEn.text);
                              inputCustomerCubit.setLastName(
                                  inputCustomerCubit.lastNameAr.text,
                                  inputCustomerCubit.lastNameEn.text);
                              inputCustomerCubit.setFatherName(
                                  inputCustomerCubit.fatherNameAr.text,
                                  inputCustomerCubit.fatherNameEn.text);
                              inputCustomerCubit.setMotherName(
                                  inputCustomerCubit.motherNameAr.text,
                                  inputCustomerCubit.motherNameEn.text);
                              context.goNamed(
                                  RoutesNames.attributesCustomersRoute,
                                  pathParameters: {
                                    "templateId": inputCustomerCubit
                                            .template?.id
                                            .toString() ??
                                        "0"
                                  },
                                  extra: inputCustomerCubit);
                            }
                          },
                          child: const Text("Next"),
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: AppSizeH.s16),
            ],
          );
        },
      ),
    );
  }

  void _nextPage() {
    if (_currentPage < 1) {
      // Assuming there are 3 pages
      _pageController.animateToPage(
        _currentPage + 1,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    } else {
      if (_enFormKey.currentState!.validate()) {
        _currentPage = 0;
        _nextPageRoot();
      }
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.animateToPage(
        _currentPage - 1,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void _nextPageRoot() {
    if (_currentPageRoot < 4) {
      // Assuming there are 3 pages
      _pageControllerRoot.animateToPage(
        _currentPageRoot + 1,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPageRoot() {
    if (_currentPageRoot > 0) {
      _pageControllerRoot.animateToPage(
        _currentPageRoot - 1,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }
}

class InputFieldText extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final String title;
  final TextInputType? type;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  const InputFieldText({
    super.key,
    required this.controller,
    this.hint,
    required this.title,
    this.inputFormatters,
    this.validator,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
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
        )
      ],
    );
  }
}
