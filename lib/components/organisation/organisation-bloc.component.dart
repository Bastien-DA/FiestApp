import 'package:fiestapp/components/organisation/courseList/course_list.component.dart';
import 'package:fiestapp/components/organisation/poll/poll.component.dart';
import 'package:flutter/material.dart';

class Organisation extends StatefulWidget {
  const Organisation({super.key});

  @override
  State<Organisation> createState() => _OrganisationState();
}

class _OrganisationState extends State<Organisation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Sondage(), CouseList(), Sondage(), Sondage()],
        ),
      ),
    );
  }
}
