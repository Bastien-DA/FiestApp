import 'package:fiestapp/components/button/button.component.dart';
import 'package:fiestapp/components/image-selector/image-selector.component.dart';
import 'package:fiestapp/components/register/header.component.dart';
import 'package:fiestapp/components/register/informations-block.component.dart';
import 'package:fiestapp/enum/app-route.enum.dart';
import 'package:fiestapp/provider/form/register-form.provider.dart';
import 'package:fiestapp/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class Register extends ConsumerWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Color(0xffF4F1F7),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: RegisterHeader(),
                  ),
                  ImageSelector(
                    title: "Sélectionnez une image",
                    height: 130,
                    onImageSelect: (XFile? image) => {
                      ref
                          .read(registerFormProvider.notifier)
                          .updateSelectedFile(image),
                    },
                  ),
                  Expanded(child: RegisterInformationsBlock()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    label: "Créer le compte",
                    icon: FontAwesomeIcons.arrowRight,
                    onPressed: () {
                      _submitForm(ref, context);
                      ref.read(routerProvider).push(AppRoute.home.path);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm(WidgetRef ref, context) {
    final registerForm = ref.watch(registerFormProvider);

    final name = registerForm.username;

    print(name);
    final age = registerForm.age;
    final gender = registerForm.gender;
    final weight = registerForm.weight;
    final height = registerForm.height;
    final alcoholConsumption = registerForm.alcoholConsumption;
    final image = ref.read(registerFormProvider.notifier).selectedFile;

    if (name.isEmpty) return _showError("Le nom est requis", context);
    if (gender.isEmpty) return _showError("Le genre est requis", context);
    if (alcoholConsumption.isEmpty)
      return _showError(
        "Le niveau de consommation d'alcool est requis",
        context,
      );

    print("Formulaire soumis avec :");
    print("Nom : $name");
    print("Âge : $age");
    print("Genre : $gender");
    print("Poids : $weight kg");
    print("Taille : $height cm");
    print("Alcool : $alcoholConsumption");
    print("Image: ${image?.name}");

    // TODO: Appel à l’API
  }

  void _showError(String message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }
}
