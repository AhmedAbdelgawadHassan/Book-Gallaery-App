import 'package:bookly/Core/Utils/AppStyles.dart';
import 'package:bookly/Features/home/Presentation/Views/Widgets/SimilarBooksListView.dart';
import 'package:flutter/widgets.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "you can also like",
            style: AppStyles.textStyle18.copyWith(fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(height: 16),
        Similarbookslistview(),
      ],
    );
  }
}
