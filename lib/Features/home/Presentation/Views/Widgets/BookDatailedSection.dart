import 'package:bookly/Core/Utils/AppStyles.dart';
import 'package:bookly/Features/home/Presentation/Views/Widgets/BookDetailedItem.dart';
import 'package:bookly/Features/home/Presentation/Views/Widgets/BookRating.dart';
import 'package:flutter/widgets.dart';

class BookDetailedSection extends StatelessWidget {
  const BookDetailedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookDetialedItem(),
        SizedBox(height: 30),
        const Text("The Jungle Book", style: AppStyles.textStyle30),
        const SizedBox(height: 5),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: AppStyles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 20),
        const Bookrating(),
      ],
    );
  }
}
