import 'package:swift_animations/swift_animations.dart';
import 'package:flutter/material.dart';

import '../../../utils/theme/palette.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const .symmetric(horizontal: 20),

      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: .min,
          spacing: 10,

          children: [
            Text(
              style: Theme.of(context).textTheme.headlineLarge,
              'Welcome to GoMart.',
              textAlign: .center,
            ).animate().slideInBottom().duration(250.ms),

            Text(
              'Your go-to destination for smart, fast, and\nhassle-free shopping',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                height: 1,
                color: Palette.secondary,
              ),
              textAlign: .center,
            ).animate().slideInBottom().duration(350.ms),

            const SizedBox(height: 20),

            SizedBox(
              width: .infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Get started'),
              ),
            ).animate().slideInBottom().duration(450.ms),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
