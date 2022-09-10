import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset("assets/logo.png"),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              _NavBarItem("Episodes"),
              SizedBox(width: 60),
              _NavBarItem("About")
            ],
          )
        ],
      ),
    );
  }
}

// Another thing more... Instance of links
class _NavBarItem extends StatelessWidget {
  final String title;

  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
