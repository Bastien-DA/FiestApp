import 'package:fiestapp/components/input/data-tag-input.component.dart';
import 'package:fiestapp/components/input/select-text-input.component.dart';
import 'package:fiestapp/components/input/slider.component.dart';
import 'package:fiestapp/components/register/gender.component.dart';
import 'package:fiestapp/utils/types/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterForm extends ConsumerStatefulWidget {
  const RegisterForm({super.key});

  @override
  ConsumerState<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends ConsumerState<RegisterForm> {
  // Déclaration des controllers
  late TextEditingController _dateController;
  late TextEditingController _timeController;
  late TextEditingController _nameController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    // Initialisation des controllers
    _dateController = TextEditingController();
    _timeController = TextEditingController();
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
  }

  @override
  void dispose() {
    // Libération de la mémoire
    _dateController.dispose();
    _nameController.dispose();
    _timeController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Row(
          spacing: 20,
          children: [
            Expanded(
              flex: 2,
              child: DataTagInput(
                title: "Comment doit-on vous appeler ?",
                placeholder: "Votre nom",
                inputType: InputType.text,
                controller: _nameController,
                onChanged: (value) => print("Nom: $value"),
              ),
            ),
            Expanded(
              flex: 1,
              child: DataTagInput(
                title: "Quel age avez-vous ?",
                iconColor: Color(0xffE15B42),
                placeholder: "25",
                inputType: InputType.number,
                controller: _phoneController,
                onChanged: (value) => print("Age: $value"),
              ),
            ),
          ],
        ),

        GenderSelector(),
        CustomSlider(
          title: "Quelle est votre taille ?",
          min: 120,
          max: 240,
          value: 170,
          unit: "cm",
          onChanged: (value) => print("Taille: $value cm"),
        ),
        MinimalEnumSelector<AlcoholConsumption>(
          width: MediaQuery.sizeOf(context).width * 0.6,
          title: "Quel buveur êtes-vous ?",
          value: AlcoholConsumption.occasionally,
          values: AlcoholConsumption.values,
          labelBuilder: (val) {
            switch (val) {
              case AlcoholConsumption.occasionally:
                return "Occasionnel";
              case AlcoholConsumption.regularly:
                return "Régulier";
              case AlcoholConsumption.seasoned:
                return "Aguerri";
            }
          },
          onChanged: (newValue) {
            // Faire quelque chose avec la nouvelle valeur
            print("Nouveau choix : $newValue");
          },
        ),
      ],
    );
  }

  void _submitForm() {
    // Récupération des valeurs
    final name = _nameController.text.trim();
    final phone = _phoneController.text.trim();
    final birthDate = _dateController.text;

    // Validation basique
    if (name.isEmpty) {
      _showError("Le nom est requis");
      return;
    }

    if (birthDate.isEmpty) {
      _showError("La date de naissance est requise");
      return;
    }

    // Traitement des données
    print("=== Inscription ===");
    print("Nom: $name");
    print("Téléphone: $phone");
    print("Date de naissance: $birthDate");

    // Ici vous pouvez appeler votre API d'inscription
    // ref.read(authProvider.notifier).register(name, email, phone, birthDate);
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }
}
