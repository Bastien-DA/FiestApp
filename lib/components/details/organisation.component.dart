import 'package:flutter/material.dart';

class Organisation extends StatefulWidget {
  const Organisation({super.key});

  @override
  State<Organisation> createState() => _OrganisationState();
}

class _OrganisationState extends State<Organisation> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Organisation'));
  }
}
