import 'package:bookly/Core/Utils/AppStyles.dart';
import 'package:bookly/Features/home/Presentation/Views/Widgets/BookRating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Newestbooksitem extends StatelessWidget {
  const Newestbooksitem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push('/BookDetailedView');
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/Screenshot 2024-12-06 121034.png",
                  ),
                ),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      "Harry Potter and GLoblet of Fire",
                      style: AppStyles.textStyle20,
                      maxLines: 2,
                      overflow:
                          TextOverflow
                              .ellipsis, // if text is overflow  apear three dots ...
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text("J.K. Rowlong", style: AppStyles.textStyle14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "19.99\$",
                        style: AppStyles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Bookrating(), // contains icone for rating (star)  and rating texts
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
