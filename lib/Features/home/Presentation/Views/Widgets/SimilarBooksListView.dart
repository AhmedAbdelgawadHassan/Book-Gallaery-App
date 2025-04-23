import 'package:bookly/Features/home/Presentation/Views/Widgets/FeaturedBookItem.dart';
import 'package:flutter/widgets.dart';

class Similarbookslistview extends StatelessWidget {
  const Similarbookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const Featuredbookitem(),
      ),
    );
  }
}
