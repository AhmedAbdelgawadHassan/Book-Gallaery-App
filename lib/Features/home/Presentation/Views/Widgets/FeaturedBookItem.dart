import 'package:flutter/material.dart';

class Featuredbookitem extends StatelessWidget {
  const Featuredbookitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.25,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/Screenshot 2024-12-06 121034.png"),
        ),
      ),
    );
  }
}
