import 'package:bookly/Core/Utils/AppStyles.dart';
import 'package:bookly/Features/home/Presentation/Views/Widgets/NewestBooksListView.dart';
import 'package:bookly/Features/home/Presentation/Views/Widgets/FeaturedBooksListView.dart';
import 'package:bookly/Features/home/Presentation/Views/Widgets/CustomAppBar.dart';
import 'package:flutter/widgets.dart';

class Customscrollviewbooks extends StatelessWidget {
  const Customscrollviewbooks({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: customAppBar()),
        SliverToBoxAdapter(child: Featuredbookslistview()),
        SliverToBoxAdapter(child: SizedBox(height: 50),),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Newest Books",
              style: AppStyles.textStyle18.copyWith(
                fontSize: 22,
                fontFamily: "times new roman",
              ),
              
            ),
          ),
        ),
         SliverToBoxAdapter(child: SizedBox(height: 10),),
        SliverToBoxAdapter(child: NewestBooksListView()),
      ],
    );
  }
}
