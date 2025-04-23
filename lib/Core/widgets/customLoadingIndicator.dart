import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Customloadingindicator extends StatelessWidget {
  const Customloadingindicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}