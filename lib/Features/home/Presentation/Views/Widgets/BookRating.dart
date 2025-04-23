import 'package:bookly/Core/Utils/AppStyles.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bookrating extends StatelessWidget {
  const Bookrating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 20,
        ),
        const SizedBox(width: 6.3),
        const Text("4.8", style: AppStyles.textStyle16),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.6,
          child: Text("(245)", style: AppStyles.textStyle14),
        ),
      ],
    );
  }
}
