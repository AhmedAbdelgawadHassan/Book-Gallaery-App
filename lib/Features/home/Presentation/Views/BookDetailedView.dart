import 'package:bookly/Features/home/Presentation/Views/Widgets/BookDetailedViewBody.dart';
import 'package:flutter/material.dart';

class Bookdetailedview extends StatelessWidget {
  const Bookdetailedview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Bookdetailedviewbody()));
  }
}
