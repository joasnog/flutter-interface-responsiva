import 'package:flutter/material.dart';
import 'package:interface_responsiva/breakpoints.dart';
import 'package:interface_responsiva/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:interface_responsiva/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:interface_responsiva/pages/home/widgets/sections/advantages_section/advantages_section.dart';
import 'package:interface_responsiva/pages/home/widgets/sections/top_section/top_section.dart';
import 'package:interface_responsiva/pages/home/widgets/sections/courses_section/courses_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  PreferredSize getAppBar(BoxConstraints constraints) {
    return PreferredSize(
      preferredSize: constraints.maxWidth < Breakpoints.mobile ? const Size.fromHeight(60) : const Size.fromHeight(72),
      child: constraints.maxWidth < Breakpoints.mobile ? const MobileAppBar() : const WebAppBar(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: getAppBar(constraints),
            drawer: constraints.maxWidth < 800
                ? const Drawer(
                    backgroundColor: Colors.white,
                  )
                : null,
            body: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 1400,
                ),
                child: ListView(
                  children: const [
                    TopSection(),
                    AdvantagesSection(),
                    CoursesSection(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
