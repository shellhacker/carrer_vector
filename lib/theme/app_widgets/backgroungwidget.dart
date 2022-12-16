import 'package:flutter/material.dart';

class AppBackgounrWidget extends StatelessWidget {
  AppBackgounrWidget({super.key, required this.child});

  @override
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 244, 244, 244),
      child: child,
    );
  }
}
