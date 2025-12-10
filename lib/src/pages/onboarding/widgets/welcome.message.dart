// import 'package:swift_animations/swift_animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_mart/src/pages/pages.dart';

import '../../../utils/theme/palette.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      padding: const .symmetric(horizontal: 20),

      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: .min,
          spacing: 10,

          children: [
            Text(
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge?.copyWith(letterSpacing: .02),
                  'Welcome to GoMart.',
                  textAlign: .center,
                )
                .animate(delay: 100.ms)
                .fadeIn(curve: Curves.easeInOut)
                .slideY(begin: 1, end: 0),

            Text(
                  'Your go-to destination for smart, fast, and\nhassle-free shopping',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    height: 1,
                    letterSpacing: .1,
                    color: Palette.secondary,
                  ),
                  textAlign: .center,
                )
                .animate(delay: 200.ms)
                .fadeIn(curve: Curves.easeInOut)
                .slideY(begin: 1, end: 0),

            const SizedBox(height: 20),

            SizedBox(
                  width: .infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const HomePage()),
                    ),
                    child: const Text('Get started'),
                  ),
                )
                .animate(delay: 200.ms)
                .fadeIn(curve: Curves.easeInOut)
                .slideY(begin: 1, end: 0),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
