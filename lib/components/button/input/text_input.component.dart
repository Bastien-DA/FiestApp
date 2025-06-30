import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String placeholder;
  final String value;
  final ValueChanged<int>? onChanged;

  const CustomTextInput({
    super.key,
    required this.placeholder,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: value.toString());

    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      cursorColor: const Color(0xffE15B42),
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: placeholder,
        labelStyle: const TextStyle(color: Colors.white70),
        floatingLabelStyle: const TextStyle(
          color: Color(0xffE15B42),
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white30, width: 1),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE15B42), width: 2),
        ),
      ),
      onChanged: (val) {
        final parsed = int.tryParse(val);
        if (parsed != null && onChanged != null) {
          onChanged!(parsed);
        }
      },
    );
  }
}
