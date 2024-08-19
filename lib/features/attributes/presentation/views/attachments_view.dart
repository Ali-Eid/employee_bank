import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/bases/enums/input_type.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/values_manager.dart';
import '../../../../core/routers/routes_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../customer/presentation/blocs/input_customer_cubit/input_customer_cubit.dart';
import '../../domain/models/attributes_model/attributes_model.dart';
import '../blocs/all_attributes_bloc/all_attributes_bloc.dart';
import 'attributes_view.dart';

class AttachmentsView extends StatefulWidget {
  final int templateId;
  const AttachmentsView({super.key, required this.templateId});

  @override
  State<AttachmentsView> createState() => _AttachmentsViewState();
}

class _AttachmentsViewState extends State<AttachmentsView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<AttributesModel> attributes = [];
  List<AttributesDataModel> attachments = [];
  @override
  void initState() {
    // inputValueAttributesCubit = instance<InputValueAttributesCubit>();
    attributes = context
        .read<AllAttributesBloc>()
        .allAttributes
        .where((e) => e.template.id == widget.templateId)
        .toList();
    attachments = attributes.first.attributes
        .where(
          (element) => element.type == InputType.file,
        )
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<InputCustomerCubit>(),
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(),
            backgroundColor: ColorManager.background,
            body: attachments.isEmpty
                ? Center(
                    child: Text(
                      "Please choose another template because no attributes in this template yet",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  )
                : Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: attachments.map(
                              (e) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppSizeW.s16,
                                      vertical: AppSizeH.s6),
                                  child: Container(
                                      padding: EdgeInsets.all(AppSizeW.s8),
                                      decoration: BoxDecoration(
                                          color: ColorManager.white,
                                          boxShadow: [
                                            BoxShadow(
                                                offset: const Offset(0, 4),
                                                color: ColorManager.grey3,
                                                blurRadius: AppSizeR.s5)
                                          ],
                                          borderRadius: BorderRadius.circular(
                                              AppSizeR.s12)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(e.label),
                                          Divider(color: ColorManager.grey3),
                                          getByType(
                                              context,
                                              context
                                                  .read<InputCustomerCubit>(),
                                              e),
                                        ],
                                      )),
                                );
                              },
                            ).toList(),
                          ),
                          Padding(
                            padding: EdgeInsets.all(AppSizeW.s16),
                            child: Row(
                              children: [
                                Expanded(
                                    child: ElevatedButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            context.goNamed(
                                                RoutesNames
                                                    .addressCustomersRoute,
                                                pathParameters: {
                                                  "templateId": context
                                                          .read<
                                                              InputCustomerCubit>()
                                                          .template
                                                          ?.id
                                                          .toString() ??
                                                      "0"
                                                },
                                                extra: context.read<
                                                    InputCustomerCubit>());
                                          }
                                        },
                                        child: const Text("set attachments"))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
      },
    );
  }
}
