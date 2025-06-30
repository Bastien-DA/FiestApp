import 'package:fiestapp/components/register/form_component.dart';
import 'package:fiestapp/components/register/header.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Register extends ConsumerWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Color(0xffF4F1F7),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(children: [RegisterHeader(), RegisterForm()]),
      ),
    );
  }
}
