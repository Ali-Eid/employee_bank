import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';

import '../../domain/models/country_model/country_model.dart';

class DropDownSearchWidget extends StatefulWidget {
  final List<CountryModel> items;
  final CountryModel? selectedValue;
  final void Function(CountryModel?)? onChanged;
  final String label;
  final String? hintSearchText;
  final String? Function(CountryModel?)? validator;

  const DropDownSearchWidget(
      {super.key,
      required this.items,
      this.selectedValue,
      this.onChanged,
      required this.label,
      this.validator,
      this.hintSearchText});

  @override
  State<DropDownSearchWidget> createState() => _DropDownSearchWidgetState();
}

class _DropDownSearchWidgetState extends State<DropDownSearchWidget> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<CountryModel>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: 0, horizontal: AppSizeW.s3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
        // Add more decoration..
      ),
      hint: Text(widget.selectedValue?.name.en ?? widget.label,
          style: Theme.of(context).textTheme.headlineLarge),
      items: widget.items
          .map((item) => DropdownMenuItem<CountryModel>(
                value: item,
                child: Text(
                  item.name.en,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ))
          .toList(),
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      value: widget.selectedValue,
      onChanged: widget.onChanged,
      iconStyleData: IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: ColorManager.grey2,
        ),
        iconSize: AppSizeSp.s24,
      ),
      // buttonStyleData: ButtonStyleData(
      //     padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
      //     width: double.infinity,
      //     decoration: BoxDecoration(
      //       color: ColorManager.white,
      //       border: Border.all(
      //         color: ColorManager.nonOpaque,
      //         width: AppSizeW.s1,
      //         // strokeAlign: AppSizeW.s1,
      //       ),
      //       borderRadius: BorderRadius.circular(AppSizeR.s4),
      //     )),
      dropdownStyleData: DropdownStyleData(
        maxHeight: AppSizeH.s200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
      ),

      dropdownSearchData: DropdownSearchData(
        searchController: textEditingController,
        searchInnerWidgetHeight: AppSizeH.s50,
        searchInnerWidget: Container(
          height: AppSizeH.s50,
          padding: EdgeInsetsDirectional.only(
            top: AppSizeH.s8,
            bottom: AppSizeH.s4,
            start: AppSizeW.s8,
            end: AppSizeW.s8,
          ),
          child: TextFormField(
              // expands: true,
              maxLines: 1,
              controller: textEditingController,
              style: Theme.of(context).textTheme.headlineLarge,
              decoration: InputDecoration(
                  hintText: widget.hintSearchText,
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 0, horizontal: AppSizeW.s6))),
        ),
        searchMatchFn: (item, searchValue) {
          return item.value!.name.en
              .toString()
              .toLowerCase()
              .contains(searchValue.toLowerCase());
        },
      ),
      //This to clear the search value when you close the menu
      onMenuStateChange: (isOpen) {
        if (!isOpen) {
          textEditingController.clear();
        }
      },
    );
  }
}
