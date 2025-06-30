import 'package:fiestapp/components/button/input/data-tag-input.component.dart';
import 'package:fiestapp/utils/types/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          children: [
            DataTagInput(
              title: "Nom complet",
              placeholder: "Entrez votre nom",
              inputType: InputType.text,
              controller: _nameController,
              onChanged: (value) => print("Nom: $value"),
            ),

            DataTagInput(
              title: "Téléphone",
              iconColor: Color(0xffE15B42),
              placeholder: "06 12 34 56 78",
              inputType: InputType.number,
              controller: _phoneController,
              icon: FontAwesomeIcons.phone,
              onChanged: (value) => print("Téléphone: $value"),
            ),

            const Spacer(),

            // Bouton de validation
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffE15B42),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'S\'inscrire',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
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
