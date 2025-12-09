import 'package:flutter/services.dart' show SystemUiOverlayStyle, SystemChrome;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart'
    show BottomSlideShadow, WelcomeMessage, InfiniteSlides, TopSlideShadow;

class OnboardingPage extends HookWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.brightnessOf(context);

    useEffect(() {
      return () {
        if (brightness == .dark) return;
        SystemChrome.setSystemUIOverlayStyle(.dark);
      };
    }, []);

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
