import 'package:fiestapp/components/image-selector/image-selector.component.dart';
import 'package:flutter/material.dart';

class AddEvent extends StatelessWidget {
  const AddEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Event')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ImageSelector(title: "Séléctionner une image")],
      ),
    );
  }
}
