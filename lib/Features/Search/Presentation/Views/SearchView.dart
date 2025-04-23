import 'package:bookly/Features/Search/Presentation/Views/Widgets/SearchView_Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SearchviewBody()));
  }
}
