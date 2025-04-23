import 'package:bookly/Features/home/Presentation/Views/Widgets/NewestBooksItem.dart';
import 'package:flutter/widgets.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding:
          EdgeInsets
              .zero, // ListView.builder is default take a padding vertical so this line remove default padding
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),  //stop scrolling 
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Newestbooksitem(),
        );
      },
    );
  }
}
