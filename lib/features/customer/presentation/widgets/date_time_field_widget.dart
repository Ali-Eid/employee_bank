import 'package:flutter/material.dart';

class DateTimeFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  const DateTimeFieldWidget(
      {super.key,
      required this.controller,
      required this.hint,
      this.onTap,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      onTap: onTap,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      style: Theme.of(context).textTheme.headlineLarge,
      decoration: InputDecoration(hintText: hint),
    );
  }
}
