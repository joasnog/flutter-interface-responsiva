import 'package:flutter/material.dart';
import 'package:interface_responsiva/breakpoints.dart';
import 'package:interface_responsiva/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: contraints.maxWidth >= Breakpoints.tablet ? 0 : 16),
        itemCount: 20,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const CourseItem();
        },
      );
    });
  }
}
