import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          "Notes",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            height: 35,
            width: 35,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              // .withOpacity to make it transparent
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      );
  }
}