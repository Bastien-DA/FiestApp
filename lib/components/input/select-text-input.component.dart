import 'package:flutter/material.dart';

class MinimalEnumSelector<T> extends StatelessWidget {
  final String Function(T) labelBuilder;
  final T value;
  final List<T> values;
  final double? width; // Optionnel, pour définir une largeur personnalisée
  final ValueChanged<T?>? onChanged;
  final Color backgroundColor;
  final String title; // Titre par défaut

  const MinimalEnumSelector({
    super.key,
    required this.labelBuilder, // Pour afficher un label dynamique
    required this.value,
    required this.values,
    this.width,
    this.onChanged,
    this.title = "Sélectionnez une option",
    this.backgroundColor = Colors.white, // valeur par défaut
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0AE15B42), // #E15B42 à 4% (0A = alpha 4%)
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xffE15B42),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          DropdownButtonFormField<T>(
            value: value,
            icon: const Icon(Icons.arrow_drop_down, color: Color(0xffE15B42)),
            dropdownColor: Colors.white,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration.collapsed(hintText: ''),
            onChanged: onChanged,
            items: values.map((v) {
              return DropdownMenuItem<T>(
                value: v,
                child: Text(
                  labelBuilder(v),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
