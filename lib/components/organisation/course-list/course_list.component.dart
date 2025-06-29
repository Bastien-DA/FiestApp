import 'package:fiestapp/components/organisation/course-list/course_list_grid.component.dart';
import 'package:fiestapp/components/text/custom-title-expand.component.dart';
import 'package:flutter/material.dart';

class CouseList extends StatefulWidget {
  const CouseList({super.key});

  @override
  State<CouseList> createState() => _CouseListState();
}

class _CouseListState extends State<CouseList> {
  void onClick() {
    print("CouseList");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        CustomTitleExpand(
          title: "Liste de courses",
          text: "Tout voir",
          onClick: onClick,
        ),
        CourseListGrid(),
      ],
    );
  }
}
