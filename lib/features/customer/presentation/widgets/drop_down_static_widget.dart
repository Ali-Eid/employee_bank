import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';

import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';

class DropDownStaticWidget extends StatefulWidget {
  final List<StaticModel> items;
  final StaticModel? selectedValue;
  final void Function(StaticModel?)? onChanged;
  final String? Function(StaticModel?)? validator;
  final String label;

  const DropDownStaticWidget(
      {super.key,
      required this.items,
      this.selectedValue,
      this.onChanged,
      required this.label,
      this.validator});

  @override
  State<DropDownStaticWidget> createState() => _DropDownStaticWidgetState();
}

class _DropDownStaticWidgetState extends State<DropDownStaticWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<StaticModel>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: 0, horizontal: AppSizeW.s3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
        // Add more decoration..
      ),
      hint: Text(widget.selectedValue?.name ?? widget.label,
          style: Theme.of(context).textTheme.headlineLarge),
      items: widget.items
          .map((item) => DropdownMenuItem<StaticModel>(
                value: item,
                child: Text(
                  item.name,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ))
          .toList(),
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: widget.onChanged,
      iconStyleData: IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: ColorManager.grey2,
        ),
        iconSize: AppSizeSp.s24,
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
      ),
      menuItemStyleData: MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s8),
      ),
    );
  }
}
