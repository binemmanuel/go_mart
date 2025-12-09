import 'package:flutter/material.dart';

class BottomSlideShadow extends StatelessWidget {
  const BottomSlideShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight * 5,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: Theme.brightnessOf(context) == Brightness.dark
              ? [
                  Colors.transparent,
                  const Color.fromARGB(121, 0, 0, 0),
                  Colors.black,
                ]
              : [
                  Colors.transparent,
                  const Color.fromARGB(130, 255, 255, 255),
                  Colors.white,
                ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
