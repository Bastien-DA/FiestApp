import 'package:flutter/material.dart';

enum Vitesse { lente, moyenne, rapide }

class MinimalEnumSelector<T> extends StatelessWidget {
  final String label;
  final T value;
  final List<T> values;
  final ValueChanged<T?>? onChanged;
  final String Function(T) labelBuilder;

  const MinimalEnumSelector({
    super.key,
    required this.label,
    required this.value,
    required this.values,
    required this.labelBuilder,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
      dropdownColor: const Color(0xff2c2c2c),
      decoration: InputDecoration(
        labelText: label,
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
      style: const TextStyle(color: Colors.white),
      onChanged: onChanged,
      items: values
          .map(
            (v) => DropdownMenuItem<T>(
              value: v,
              child: Text(
                labelBuilder(v),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          )
          .toList(),
    );
  }
}
