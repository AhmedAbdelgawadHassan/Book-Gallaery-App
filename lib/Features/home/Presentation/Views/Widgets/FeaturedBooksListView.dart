
import 'package:bookly/Features/home/Presentation/Views/Widgets/FeaturedBookItem.dart';
import 'package:flutter/material.dart';

class Featuredbookslistview extends StatelessWidget {
  const Featuredbookslistview({super.key});

  @override
  Widget build(BuildContext context) {
  return  SizedBox(                                      // to give height for listview
        height: MediaQuery.of(context).size.height * 0.25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const Featuredbookitem(),
        ));
  }
}
