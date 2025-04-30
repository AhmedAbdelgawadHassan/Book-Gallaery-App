import 'package:bookly/Features/home/Presentation/Views/Widgets/BookDatailedSection.dart';
import 'package:bookly/Features/home/Presentation/Views/Widgets/Books_Action_button.dart';
import 'package:bookly/Features/home/Presentation/Views/Widgets/CustomBookDetailedAppBar.dart';
import 'package:bookly/Features/home/Presentation/Views/Widgets/SimilarBookSection.dart';
import 'package:flutter/material.dart';

class Bookdetailedviewbody extends StatelessWidget {
  const Bookdetailedviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      //  use custom scroll view   to can use Expanded widget without any Error
      slivers: [
        SliverFillRemaining(
          // put childer in free space
          hasScrollBody: false, // make childer not scrollable
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Custombookdetailedappbar(), // Custom AppBar
                BookDetailedSection(), // Devide screen to collection of Sections to echance the shape of code
                const SizedBox(height: 25),
                const BooksActionButton(),
                SizedBox(height: 40),
                SimilarBooksSection(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
