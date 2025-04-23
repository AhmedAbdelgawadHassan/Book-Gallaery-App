// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously
import 'package:bookly/Core/Utils/AppAssets.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashviewBody extends StatefulWidget {
  const SplashviewBody({super.key});

  @override
  State<SplashviewBody> createState() => _SplashviewBodyState();
}

class _SplashviewBodyState extends State<SplashviewBody>
    with SingleTickerProviderStateMixin {
  // mixin for controll a animation values
  late AnimationController
  animationController; // for animation (thier values from 0 to 1)
  late Animation<Offset>
  SlidingAnimation; // for animation (thier values are higher not only 0&1)

  @override
  @override
  void initState() {
    super.initState();
    AddingAnimation();  // method for adding animation
    NavigationToHome(); // method for navigation to home view
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push('/HomeView');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push('/HomeView');
            },
            child: Image(
              image: AssetImage(Appassets.logo),
            ),
          ), //  Assets class contains all assets pathes
          SizedBox(height: 10),
          SlideTransition(
            position: SlidingAnimation,
            child: Text(
              "Read Free Books",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  void NavigationToHome() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(
        context,
      ).push('/HomeView'); // navigato to home screen using go router package
    });
  }


  void AddingAnimation() {
     animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3), //duration of animation
    );

    SlidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animationController, // to put it above animationController
        curve: Curves.fastOutSlowIn, // shape of motion
      ),
    );

    animationController.forward(); //direction of motion
  } 
}
