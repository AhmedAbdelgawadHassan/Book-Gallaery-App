import 'package:bookly/Core/Utils/AppAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
      child: Row(
        children: [
          Image(image: AssetImage(Appassets.logo), height: 20),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/SearchView');
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
            iconSize: 25,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
