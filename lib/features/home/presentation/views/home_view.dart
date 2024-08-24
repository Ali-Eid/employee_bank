// ignore_for_file: unrelated_type_equality_checks

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/network/network_info.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/features/address/domain/models/input_models/set_address_model.dart';
import 'package:fs_bank/features/attributes/domain/models/set_attachments_model/set_attachments_model.dart';
import 'package:fs_bank/features/attributes/presentation/blocs/set_attachment_bloc/set_attachment_bloc.dart';
import 'package:fs_bank/features/customer/presentation/blocs/caching_bloc/caching_bloc.dart';
import 'package:fs_bank/features/home/presentation/blocs/sync_bloc/sync_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../address/presentation/blocs/set_address_bloc/set_address_bloc.dart';
import '../../../attributes/domain/models/set_attributes_model/set_attribute_model.dart';
import '../../../attributes/presentation/blocs/set_attribute_bloc/set_attribute_bloc.dart';
import '../../../customer/domain/models/input_create_customer_model/input_create_customer_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // Timer? _timer;

  @override
  void initState() {
    context.read<CachingBloc>().add(const CachingEvent.getCustomersCaching());
    // _timer = Timer.periodic(
    //   const Duration(seconds: 3),
    //   (timer) async {
    //     context.read<CachingBloc>().add(CachingEvent.filter(
    //         filterType: context.read<CachingBloc>().filterType));
    //   },
    // );
    super.initState();
  }

  @override
  void dispose() {
    // _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder(
            bloc: context.read<CachingBloc>(),
            builder: (context, state) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadiusDirectional.only(
                                            topStart:
                                                Radius.circular(AppSizeR.s6),
                                            bottomStart:
                                                Radius.circular(AppSizeR.s6)),
                                        side: BorderSide(
                                            color: context
                                                        .read<CachingBloc>()
                                                        .filterType !=
                                                    0
                                                ? ColorManager.primary
                                                : Colors.transparent))),
                                backgroundColor: WidgetStateProperty.all(
                                    context.read<CachingBloc>().filterType == 0
                                        ? ColorManager.primary
                                        : ColorManager.white)),
                            onPressed: () {
                              context.read<CachingBloc>().add(
                                  const CachingEvent.filter(filterType: 0));
                            },
                            child: Text(
                              "Processing",
                              style: context.read<CachingBloc>().filterType != 0
                                  ? Theme.of(context).textTheme.headlineMedium
                                  : Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(color: ColorManager.white),
                            ))),
                    Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        // borderRadius:
                                        //     BorderRadius.circular(AppSizeR.s6),
                                        side: BorderSide(
                                            color: context
                                                        .read<CachingBloc>()
                                                        .filterType !=
                                                    1
                                                ? ColorManager.primary
                                                : Colors.transparent))),
                                backgroundColor: WidgetStateProperty.all(
                                    context.read<CachingBloc>().filterType == 1
                                        ? ColorManager.primary
                                        : ColorManager.white)),
                            onPressed: () {
                              context.read<CachingBloc>().add(
                                  const CachingEvent.filter(filterType: 1));
                            },
                            child: Text(
                              "Sync",
                              style: context.read<CachingBloc>().filterType != 1
                                  ? Theme.of(context).textTheme.headlineMedium
                                  : Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(color: ColorManager.white),
                            ))),
                    Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadiusDirectional.only(
                                            topEnd:
                                                Radius.circular(AppSizeR.s6),
                                            bottomEnd:
                                                Radius.circular(AppSizeR.s6)),
                                        side: BorderSide(
                                            color: context
                                                        .read<CachingBloc>()
                                                        .filterType !=
                                                    2
                                                ? ColorManager.primary
                                                : Colors.transparent))),
                                backgroundColor: WidgetStateProperty.all(
                                    context.read<CachingBloc>().filterType == 2
                                        ? ColorManager.primary
                                        : ColorManager.white)),
                            onPressed: () {
                              context.read<CachingBloc>().add(
                                  const CachingEvent.filter(filterType: 2));
                            },
                            child: Text(
                              "Error",
                              style: context.read<CachingBloc>().filterType != 2
                                  ? Theme.of(context).textTheme.headlineMedium
                                  : Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(color: ColorManager.white),
                            ))),
                  ],
                ),
              );
            },
          ),
          SizedBox(height: AppSizeH.s12),
          BlocConsumer(
            listener: (context, CachingState state) {
              state.mapOrNull(
                success: (value) {
                  context.read<CachingBloc>().add(CachingEvent.filter(
                      filterType: context.read<CachingBloc>().filterType));
                },
              );
            },
            bloc: context.read<CachingBloc>(),
            builder: (context, CachingState state) {
              return state.maybeMap(
                loading: (value) => const Center(
                  child: CircularProgressIndicator(),
                ),
                successFilter: (value) {
                  return value.customersInput.isEmpty
                      ? const Expanded(child: Center(child: Text("No Data")))
                      : Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppSizeW.s16),
                              child: ListView.builder(
                                itemCount: value.customersInput.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomerTempWidget(
                                          index: index,
                                          model: value.customersInput[index]),
                                      const Divider()
                                    ],
                                  );
                                },
                              )
                              // Column(
                              //   children: value.customersInput.map(
                              //     (e) {
                              // return Column(
                              //   mainAxisSize: MainAxisSize.min,
                              //   children: [
                              //     CustomerTempWidget(model: e),
                              //     const Divider()
                              //   ],
                              // );
                              //     },
                              //   ).toList(),
                              // ),
                              ),
                        );
                },
                orElse: () {
                  return const Expanded(child: SizedBox());
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: AppSizeH.s12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                      child: ElevatedButton(
                          onPressed: () {
                            context.goNamed(RoutesNames.createCustomerRoute);
                          },
                          child: const Text("Create Customer")),
                    )),
                  ],
                ),
                SizedBox(height: AppSizeH.s16),
                // Row(
                //   children: [
                //     Expanded(
                //         child: Padding(
                //       padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                //       child: ElevatedButton(
                //           onPressed: () {
                //             // context.goNamed(RoutesNames.addressCustomersRoute);
                //             print(
                //                 context.read<CachingBloc>().cachedShow.length);
                //             // print({
                //             //   "has success attachments":
                //             //       "${context.read<CachingBloc>().cached.map(
                //             //             (e) => e.attachments,
                //             //           ).toList()},",
                //             //   "has success attr":
                //             //       "${context.read<CachingBloc>().cached.map(
                //             //             (e) => e.hasSuccessSetAttributes,
                //             //           ).toList()},",
                //             //   "has success address":
                //             //       "${context.read<CachingBloc>().cached.map(
                //             //             (e) => e.hasSuccessSetAddress,
                //             //           ).toList()},"
                //             // "has error":
                //             //     "${context.read<CachingBloc>().cached.map(
                //             //           (e) => e.hasError,
                //             //         ).toList()}"
                //             // });
                //             print(context.read<CachingBloc>().cachedShow);
                //           },
                //           child: const Text("Get cached")),
                //     )),
                //   ],
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomerTempWidget extends StatefulWidget {
  final InputCreateCustomerModel model;
  final int index;
  const CustomerTempWidget({
    super.key,
    required this.model,
    required this.index,
  });

  @override
  State<CustomerTempWidget> createState() => _CustomerTempWidgetState();
}

class _CustomerTempWidgetState extends State<CustomerTempWidget> {
  late SyncBloc syncBloc;
  late SetAttributeBloc setAttributeBloc;
  late SetAddressBloc setAddressBloc;

  InputCreateCustomerModel? temp;
  Timer? _timer;
  @override
  void initState() {
    syncBloc = instance<SyncBloc>();
    setAttributeBloc = instance<SetAttributeBloc>();
    setAddressBloc = instance<SetAddressBloc>();
    temp = widget.model;
    // syncBloc.add(SyncEvent.createCustomer(input: widget.model));
    _timer = Timer.periodic(
      Duration(seconds: ((widget.index + 1) * 10)),
      (timer) async {
        if (await instance<NetworkInfo>().isConnected) {
          (temp?.hasError ?? false) || (temp?.hasSuccess ?? false)
              ? null
              : syncBloc.add(SyncEvent.createCustomer(input: widget.model));
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      listener: (context, SyncState state) {
        state.mapOrNull(
          error: (value) {
            temp = temp?.copyWith(hasError: true);
          },
          loaded: (value) async {
            temp = temp?.copyWith(
                hasSuccess: true, customerId: value.customer.data.id);
            context.read<CachingBloc>().replaceCustomerInfo(customer: temp!);
            setAttributeBloc.add(SetAttributeEvent.setAttribute(
                setAttributeModel: SetAttributeModel(
                    customerId: value.customer.data.id,
                    attributes: widget.model.attributes)));
            setAddressBloc.add(SetAddressEvent.setAddress(
                cusotmerId: value.customer.data.id,
                model: widget.model.address));
          },
        );
      },
      bloc: syncBloc,
      builder: (context, SyncState state) {
        return state.maybeMap(
          error: (value) {
            // ignore: unused_result
            return Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(widget.model.firstName.en),
                      SizedBox(width: AppSizeW.s6),
                      Text(
                        value.message,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: ColorManager.persimmon),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: AppSizeW.s6),
                InkWell(
                    onTap: () {
                      temp = temp?.copyWith(hasError: false);
                      syncBloc
                          .add(SyncEvent.createCustomer(input: widget.model));
                    },
                    child: Icon(Icons.refresh, color: ColorManager.persimmon)),
              ],
            );
          },
          loading: (value) {
            return Column(
              children: [
                Row(
                  children: [
                    Text(
                        "${widget.model.firstName.en} ${widget.model.lastName.en}",
                        style: Theme.of(context).textTheme.labelSmall),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Set customer basic info",
                            style: Theme.of(context).textTheme.headlineLarge),
                        SizedBox(width: AppSizeW.s6),
                        Icon(
                          Icons.timer_outlined,
                          size: AppSizeSp.s14,
                          color: ColorManager.primary,
                        )
                      ],
                    ),
                    SizedBox(height: AppSizeH.s3),
                  ],
                )
              ],
            );
          },
          loaded: (value) {
            return Column(
              children: [
                Row(
                  children: [
                    Text(
                        "${widget.model.firstName.en} ${widget.model.lastName.en}",
                        style: Theme.of(context).textTheme.labelSmall),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Set customer basic info",
                            style: Theme.of(context).textTheme.headlineLarge),
                        SizedBox(width: AppSizeW.s6),
                        Icon(
                          Icons.check,
                          size: AppSizeSp.s14,
                          color: ColorManager.emerald,
                        )
                      ],
                    ),
                    SizedBox(height: AppSizeH.s3),
                    BlocProvider.value(
                      value: setAttributeBloc,
                      child: AttributesWidget(
                          customerId: value.customer.data.id,
                          attributs: widget.model.attributes),
                    ),
                    SizedBox(height: AppSizeH.s3),
                    BlocProvider.value(
                      value: setAddressBloc,
                      child: AddressWidget(
                          customerId: value.customer.data.id,
                          model: widget.model.address),
                    ),
                    SizedBox(height: AppSizeH.s3),
                    AttachmentsWidget(
                        customerId: value.customer.data.id,
                        models: widget.model.attachments)
                  ],
                )
              ],
            );
          },
          orElse: () {
            return temp?.hasSuccess ?? false
                ? Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "${widget.model.firstName.en} ${widget.model.lastName.en}",
                              style: Theme.of(context).textTheme.labelSmall),
                          //todo!
                          // ((temp?.hasErrorSetAddress ?? false) ||
                          //         (temp?.hasErrorSetAttributes ?? false))
                          //     ? IconButton(
                          //         onPressed: () {
                          //           if (temp?.hasErrorSetAddress ?? false) {
                          //             temp = temp?.copyWith(
                          //                 hasErrorSetAddress: false);
                          //             context
                          //                 .read<CachingBloc>()
                          //                 .replaceCustomerInfo(customer: temp!);
                          //             setAddressBloc.add(
                          //                 SetAddressEvent.setAddress(
                          //                     cusotmerId: temp?.customerId ?? 0,
                          //                     model: widget.model.address));
                          //           }
                          //           if ((temp?.hasErrorSetAttributes ??
                          //               false)) {
                          //             temp = temp?.copyWith(
                          //                 hasErrorSetAttributes: false);
                          //             context
                          //                 .read<CachingBloc>()
                          //                 .replaceCustomerInfo(customer: temp!);
                          //             setAttributeBloc.add(
                          //                 SetAttributeEvent.setAttribute(
                          //                     setAttributeModel:
                          //                         SetAttributeModel(
                          //                             customerId:
                          //                                 temp?.customerId ?? 0,
                          //                             attributes: widget
                          //                                 .model.attributes)));
                          //           }
                          //         },
                          //         icon: Icon(
                          //           Icons.sync,
                          //           color: ColorManager.persimmon,
                          //           size: AppSizeSp.s16,
                          //         ))
                          //     : const SizedBox()
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("Set customer basic info",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge),
                              SizedBox(width: AppSizeW.s6),
                              Icon(
                                Icons.check,
                                size: AppSizeSp.s14,
                                color: ColorManager.emerald,
                              )
                            ],
                          ),
                          SizedBox(height: AppSizeH.s3),
                          BlocProvider.value(
                            value: setAttributeBloc,
                            child: AttributesWidget(
                              customerId: temp?.customerId ?? 0,
                              attributs: widget.model.attributes,
                            ),
                          ),
                          SizedBox(height: AppSizeH.s3),
                          BlocProvider.value(
                            value: setAddressBloc,
                            child: AddressWidget(
                                customerId: temp?.customerId ?? 0,
                                model: widget.model.address),
                          ),
                          SizedBox(height: AppSizeH.s3),
                          AttachmentsWidget(
                              customerId: temp?.customerId ?? 0,
                              models: widget.model.attachments)
                        ],
                      )
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        children: [
                          Text(
                              "${widget.model.firstName.en} ${widget.model.lastName.en}",
                              style: Theme.of(context).textTheme.labelSmall),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("Set customer basic info",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge),
                              SizedBox(width: AppSizeW.s6),
                              Icon(
                                Icons.close,
                                size: AppSizeSp.s14,
                                color: ColorManager.persimmon,
                              )
                            ],
                          ),
                          SizedBox(height: AppSizeH.s3),
                        ],
                      )
                    ],
                  );
          },
        );
      },
    );
  }
}

class AttributesWidget extends StatefulWidget {
  final int customerId;
  final List<AttributeModel> attributs;
  const AttributesWidget({
    super.key,
    required this.customerId,
    required this.attributs,
  });

  @override
  State<AttributesWidget> createState() => _AttributesAddretState();
}

class _AttributesAddretState extends State<AttributesWidget> {
  InputCreateCustomerModel? temp;
  // int index = 0;
  @override
  void initState() {
    // index = context.read<CachingBloc>().cached.indexWhere(
    //       (element) => element.customerId == widget.customerId,
    //     );
    temp = context.read<CachingBloc>().cached.firstWhere(
          (element) => element.customerId == widget.customerId,
        );
    if (temp != InputCreateCustomerModel()) {
      (temp?.hasSuccessSetAttributes ?? false) ||
              (temp?.hasErrorSetAttributes ?? false)
          ? null
          : context.read<SetAttributeBloc>().add(SetAttributeEvent.setAttribute(
              setAttributeModel: SetAttributeModel(
                  customerId: widget.customerId,
                  attributes: widget.attributs)));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return temp?.hasSuccessSetAttributes ?? false
        ? Row(
            children: [
              Text("Set attributes",
                  style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(width: AppSizeW.s6),
              Icon(
                Icons.check,
                size: AppSizeSp.s14,
                color: ColorManager.emerald,
              )
            ],
          )
        : temp?.hasErrorSetAttributes ?? false
            ? Row(
                children: [
                  Text("Set attributes",
                      style: Theme.of(context).textTheme.headlineLarge),
                  SizedBox(width: AppSizeW.s6),
                  Icon(
                    Icons.close,
                    size: AppSizeSp.s14,
                    color: ColorManager.persimmon,
                  )
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BlocConsumer(
                    listener: (context, SetAttributeState state) {
                      state.mapOrNull(
                        success: (value) {
                          temp = context.read<CachingBloc>().cached.firstWhere(
                                (element) =>
                                    element.customerId == widget.customerId,
                              );
                          temp = temp?.copyWith(hasSuccessSetAttributes: true);
                          context
                              .read<CachingBloc>()
                              .replaceCustomerInfo(customer: temp!);
                        },
                        error: (value) {
                          temp = context.read<CachingBloc>().cached.firstWhere(
                                (element) =>
                                    element.customerId == widget.customerId,
                              );
                          temp = temp?.copyWith(hasErrorSetAttributes: true);
                          context
                              .read<CachingBloc>()
                              .replaceCustomerInfo(customer: temp!);
                        },
                      );
                    },
                    bloc: context.read<SetAttributeBloc>(),
                    builder: (context, SetAttributeState state) {
                      return state.maybeMap(
                        loading: (value) {
                          return Row(
                            children: [
                              Text("Set attributes",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge),
                              SizedBox(width: AppSizeW.s6),
                              Icon(
                                Icons.timer_outlined,
                                size: AppSizeSp.s14,
                                color: ColorManager.primary,
                              )
                            ],
                          );
                        },
                        success: (value) {
                          return Row(
                            children: [
                              Text("Set attributes",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge),
                              SizedBox(width: AppSizeW.s6),
                              Icon(
                                Icons.check,
                                size: AppSizeSp.s14,
                                color: ColorManager.emerald,
                              )
                            ],
                          );
                        },
                        orElse: () {
                          return Row(
                            children: [
                              Text("Set attributes",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge),
                              SizedBox(width: AppSizeW.s6),
                              Icon(
                                Icons.close,
                                size: AppSizeSp.s14,
                                color: ColorManager.persimmon,
                              )
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              );
  }
}

class AddressWidget extends StatefulWidget {
  final int customerId;
  final SetAddressModel model;
  const AddressWidget({
    super.key,
    required this.customerId,
    required this.model,
  });

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  InputCreateCustomerModel? temp;

  @override
  void initState() {
    temp = context.read<CachingBloc>().cached.firstWhere(
          (element) => element.customerId == widget.customerId,
        );
    if (temp != InputCreateCustomerModel()) {
      (temp?.hasSuccessSetAddress ?? false) ||
              (temp?.hasErrorSetAddress ?? false)
          ? null
          : context.read<SetAddressBloc>().add(SetAddressEvent.setAddress(
              cusotmerId: widget.customerId, model: widget.model));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return temp?.hasSuccessSetAddress ?? false
        ? Row(
            children: [
              Text("Set Address",
                  style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(width: AppSizeW.s6),
              Icon(
                Icons.check,
                size: AppSizeSp.s14,
                color: ColorManager.emerald,
              )
            ],
          )
        : temp?.hasErrorSetAddress ?? false
            ? Row(
                children: [
                  Text("Set Address",
                      style: Theme.of(context).textTheme.headlineLarge),
                  SizedBox(width: AppSizeW.s6),
                  Icon(
                    Icons.close,
                    size: AppSizeSp.s14,
                    color: ColorManager.persimmon,
                  )
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BlocConsumer(
                    listener: (context, SetAddressState state) {
                      state.mapOrNull(
                        success: (value) {
                          temp = context.read<CachingBloc>().cached.firstWhere(
                                (element) =>
                                    element.customerId == widget.customerId,
                              );

                          temp = temp?.copyWith(hasSuccessSetAddress: true);
                          context
                              .read<CachingBloc>()
                              .replaceCustomerInfo(customer: temp!);
                        },
                        error: (value) {
                          temp = context.read<CachingBloc>().cached.firstWhere(
                                (element) =>
                                    element.customerId == widget.customerId,
                              );
                          temp = temp?.copyWith(hasErrorSetAddress: true);
                          context
                              .read<CachingBloc>()
                              .replaceCustomerInfo(customer: temp!);
                        },
                      );
                    },
                    bloc: context.read<SetAddressBloc>(),
                    builder: (context, SetAddressState state) {
                      return state.maybeMap(
                        loading: (value) {
                          return Row(
                            children: [
                              Text("Set Address",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge),
                              SizedBox(width: AppSizeW.s6),
                              Icon(
                                Icons.timer_outlined,
                                size: AppSizeSp.s14,
                                color: ColorManager.primary,
                              )
                            ],
                          );
                        },
                        success: (value) {
                          return Row(
                            children: [
                              Text("Set Address",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge),
                              SizedBox(width: AppSizeW.s6),
                              Icon(
                                Icons.check,
                                size: AppSizeSp.s14,
                                color: ColorManager.emerald,
                              )
                            ],
                          );
                        },
                        orElse: () {
                          return Row(
                            children: [
                              Text("Set Address",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge),
                              SizedBox(width: AppSizeW.s6),
                              Icon(
                                Icons.close,
                                size: AppSizeSp.s14,
                                color: ColorManager.persimmon,
                              )
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              );
  }
}

class AttachmentsWidget extends StatefulWidget {
  final int customerId;
  final List<SetAttachmentModel> models;
  const AttachmentsWidget({
    super.key,
    required this.customerId,
    required this.models,
  });

  @override
  State<AttachmentsWidget> createState() => _AttachmentsWidgetState();
}

class _AttachmentsWidgetState extends State<AttachmentsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsetsDirectional.only(top: AppSizeW.s8, end: AppSizeW.s8),
          child: Text("Set attachments",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.w600)),
        ),
        SizedBox(height: AppSizeH.s4),
        Container(
          padding: EdgeInsets.symmetric(vertical: AppSizeH.s4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizeR.s6),
              border: Border.all(color: ColorManager.grey3, width: 0.5)),
          child: Padding(
            padding: EdgeInsetsDirectional.only(
                start: AppSizeW.s8, end: AppSizeW.s8, bottom: AppSizeW.s8),
            child: Column(
              children: widget.models.map((e) {
                return AttachmentWidget(
                  customerId: widget.customerId,
                  model: e,
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}

class AttachmentWidget extends StatefulWidget {
  final SetAttachmentModel model;
  final int customerId;
  const AttachmentWidget({
    super.key,
    required this.model,
    required this.customerId,
  });

  @override
  State<AttachmentWidget> createState() => _AttachmentWidgetState();
}

class _AttachmentWidgetState extends State<AttachmentWidget> {
  late SetAttachmentBloc setAttachmentBloc;
  InputCreateCustomerModel? temp;
  @override
  void initState() {
    temp = context.read<CachingBloc>().cached.firstWhere(
          (element) => element.customerId == widget.customerId,
        );
    setAttachmentBloc = instance<SetAttachmentBloc>();
    if (!(temp?.attachments
            .firstWhere(
              (element) => element.attributeId == widget.model.attributeId,
              orElse: () => SetAttachmentModel(),
            )
            .isUploaded ??
        false)) {
      if (!(temp?.attachments
              .firstWhere(
                (element) => element.attributeId == widget.model.attributeId,
                orElse: () => SetAttachmentModel(),
              )
              .hasError ??
          false)) {
        setAttachmentBloc.add(SetAttachmentEvent.setAttachment(
            customerId: widget.customerId, model: widget.model));
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return temp?.attachments
                .firstWhere(
                  (element) => element.attributeId == widget.model.attributeId,
                  orElse: () => SetAttachmentModel(),
                )
                .isUploaded ??
            false
        ? Row(children: [
            Text(widget.model.name,
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(width: AppSizeW.s4),
            Icon(
              Icons.check,
              size: AppSizeSp.s16,
              color: ColorManager.emerald,
            )
          ])
        : temp?.attachments
                    .firstWhere(
                      (element) =>
                          element.attributeId == widget.model.attributeId,
                      orElse: () => SetAttachmentModel(),
                    )
                    .hasError ??
                false
            ? Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(widget.model.name,
                        style: Theme.of(context).textTheme.headlineLarge),
                    SizedBox(width: AppSizeW.s4),
                    Icon(
                      Icons.close,
                      size: AppSizeSp.s16,
                      color: ColorManager.persimmon,
                    ),
                  ],
                ),
                // SizedBox(width: AppSizeW.s12),
                // IconButton(
                //     onPressed: () {
                //       temp = context.read<CachingBloc>().cached.firstWhere(
                //             (element) =>
                //                 element.customerId == widget.customerId,
                //           );
                //       temp = temp?.copyWith(
                //           attachments: temp?.attachments.map(
                //                 (e) {
                //                   if (e.attributeId ==
                //                       widget.model.attributeId) {
                //                     e = e.copyWith(
                //                         isUploaded: false, hasError: false);
                //                   }
                //                   return e;
                //                 },
                //               ).toList() ??
                //               []);
                //       context
                //           .read<CachingBloc>()
                //           .replaceCustomerInfo(customer: temp!);
                //       setAttachmentBloc.add(SetAttachmentEvent.setAttachment(
                //           customerId: widget.customerId, model: widget.model));
                //     },
                //     icon: Icon(
                //       Icons.sync,
                //       size: AppSizeSp.s16,
                //       color: ColorManager.primary,
                //     )),
              ])
            : Row(
                children: [
                  Text(widget.model.name,
                      style: Theme.of(context).textTheme.headlineLarge),
                  SizedBox(width: AppSizeW.s4),
                  BlocConsumer(
                    listener: (context, SetAttachmentState state) {
                      state.mapOrNull(
                        success: (value) {
                          temp = context.read<CachingBloc>().cached.firstWhere(
                                (element) =>
                                    element.customerId == widget.customerId,
                              );
                          temp = temp?.copyWith(
                              attachments: temp?.attachments.map(
                                    (e) {
                                      if (e.attributeId ==
                                          widget.model.attributeId) {
                                        e = e.copyWith(isUploaded: true);
                                      }
                                      return e;
                                    },
                                  ).toList() ??
                                  []);
                          context
                              .read<CachingBloc>()
                              .replaceCustomerInfo(customer: temp!);
                        },
                        error: (value) {
                          temp = context.read<CachingBloc>().cached.firstWhere(
                                (element) =>
                                    element.customerId == widget.customerId,
                              );
                          temp = temp?.copyWith(
                              attachments: temp?.attachments.map(
                                    (e) {
                                      if (e.attributeId ==
                                          widget.model.attributeId) {
                                        e = e.copyWith(
                                            isUploaded: false, hasError: true);
                                      }
                                      return e;
                                    },
                                  ).toList() ??
                                  []);
                          context
                              .read<CachingBloc>()
                              .replaceCustomerInfo(customer: temp!);
                        },
                      );
                    },
                    bloc: setAttachmentBloc,
                    builder: (context, SetAttachmentState state) {
                      return state.maybeMap(
                        loading: (value) {
                          return Icon(
                            Icons.timer_outlined,
                            size: AppSizeSp.s16,
                            color: ColorManager.primary,
                          );
                        },
                        success: (value) {
                          return Icon(
                            Icons.check,
                            size: AppSizeSp.s16,
                            color: ColorManager.emerald,
                          );
                        },
                        orElse: () {
                          return Icon(
                            Icons.close,
                            size: AppSizeSp.s16,
                            color: ColorManager.persimmon,
                          );
                        },
                      );
                    },
                  )
                ],
              );
  }
}
