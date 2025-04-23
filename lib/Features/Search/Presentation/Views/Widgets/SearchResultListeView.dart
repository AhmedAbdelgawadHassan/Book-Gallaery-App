import 'package:bookly/Features/home/Presentation/Views/Widgets/NewestBooksItem.dart';
import 'package:flutter/widgets.dart';

class SearchResultlisteview extends StatelessWidget {
  const SearchResultlisteview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding:
          EdgeInsets
              .zero, // ListView.builder is default take a padding vertical so this line remove default padding
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Newestbooksitem(),
        );
      },
    );
  }
}
