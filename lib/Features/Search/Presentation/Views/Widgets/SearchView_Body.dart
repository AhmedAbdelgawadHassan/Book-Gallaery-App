import 'package:bookly/Features/Search/Presentation/Views/Widgets/SearchResultListeView.dart';
import 'package:bookly/Features/Search/Presentation/Views/Widgets/customSearchTextField.dart';
import 'package:flutter/widgets.dart';

class SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [
          Customsearchtextfield(),
          SizedBox(height: 20),
          Expanded(child: SearchResultlisteview()),
        ],
      ),
    );
  }
}
