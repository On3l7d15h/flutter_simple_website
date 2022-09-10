import 'package:flutter/material.dart';
import 'package:simple_website/widgets/call_to_action/call_to_action.dart';
import 'package:simple_website/widgets/centered_view/centered_view.dart';
import 'package:simple_website/widgets/course_details/course_details.dart';
import 'package:simple_website/widgets/navigation_bar/navigation_bar.dart'
    as NavBar;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            const NavBar.NavigationBar(),
            Expanded(
              child: Row(
                children: const [
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction(title: "Join Course!"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
