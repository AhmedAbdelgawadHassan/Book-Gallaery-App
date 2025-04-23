// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';

class Custombookdetailedappbar extends StatelessWidget {
  const Custombookdetailedappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop(context);
          },
          icon: Icon(Icons.close),
          iconSize: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.cartShopping),
          iconSize: 25,
        ),
      ],
    );
  }
}
