import 'package:flutter/material.dart';

class CustomSearchTextForm extends StatelessWidget {
  final ValueChanged<String>? onChange;
  final TextEditingController? controller;
  final Widget? suffixicon;
  final Widget? prefixIcon;

  const CustomSearchTextForm(
      {super.key,
      this.onChange,
      this.controller,
      this.suffixicon,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        onChanged: onChange,
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: suffixicon,
            prefixIcon: prefixIcon,
            fillColor: const Color.fromARGB(255, 200, 197, 197),
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 200, 197, 197),
                ),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 200, 197, 197),
                ),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
