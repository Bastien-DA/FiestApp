import 'package:fiestapp/components/input/data-tag-input.component.dart';
import 'package:fiestapp/utils/types/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddEventAdress extends ConsumerStatefulWidget {
  const AddEventAdress({super.key});

  @override
  ConsumerState<AddEventAdress> createState() => _AddEventAdressState();
}

class _AddEventAdressState extends ConsumerState<AddEventAdress> {
  // Déclaration des controllers
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    // Initialisation des controllers
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    // Libération de la mémoire
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        DataTagInput(
          title: "Rue",
          placeholder: "Entrez la rue de l'événement",
          inputType: InputType.text,
          controller: _titleController,
          onChanged: (value) => print("rue: $value"),
        ),
        Row(
          spacing: 20,
          children: [
            Expanded(
              flex: 2,
              child: DataTagInput(
                title: "Ville",
                placeholder: "Entrez la ville de l'événement",
                inputType: InputType.text,
                controller: _titleController,
                onChanged: (value) => print("Ville: $value"),
              ),
            ),
            Expanded(
              flex: 1,
              child: DataTagInput(
                title: "Code postal",
                iconColor: Color(0xffE15B42),
                placeholder: "Entrez le code postal",
                inputType: InputType.number,
                controller: _descriptionController,
                onChanged: (value) => print("Code postal: $value"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
