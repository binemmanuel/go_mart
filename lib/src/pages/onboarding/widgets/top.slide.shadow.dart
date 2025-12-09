import 'package:flutter/material.dart';

class TopSlideShadow extends StatelessWidget {
  const TopSlideShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight * 4,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Color.fromARGB(130, 0, 0, 0),
            Colors.transparent,
          ],
          end: .bottomCenter,
          begin: .topCenter,
        ),
      ),
    );
  }
}
