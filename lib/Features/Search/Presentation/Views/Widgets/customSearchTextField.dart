import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class Customsearchtextfield extends StatelessWidget {
  const Customsearchtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.magnifyingGlass),
          iconSize: 22,
        ),
      ),
    );
  }
}
