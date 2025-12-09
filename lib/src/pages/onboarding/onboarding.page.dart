import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart'
    show BottomSlideShadow, WelcomeMessage, InfiniteSlides, TopSlideShadow;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.light,

        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  InfiniteSlides(),

                  TopSlideShadow(),

                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: BottomSlideShadow(),
                  ),
                ],
              ),
            ),

            WelcomeMessage(),
          ],
        ),
      ),
    );
  }
}
