import 'dart:math' show pi;

import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';

class InfiniteSlides extends StatelessWidget {
  const InfiniteSlides({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,

      child: const Column(
        spacing: 15,
        children: [
          InfiniteSlideImages(
            images: [
              'assets/images/male-watch.jpg',
              'assets/images/wrist-watch.jpg',
              'assets/images/wrist-watch-1.jpg',
            ],
          ),

          InfiniteSlideImages.startInReverse(
            images: [
              'assets/images/wrist-watch-1.jpg',
              'assets/images/watch-1.jpg',
              'assets/images/wrist-watch.jpg',
            ],
          ),
        ],
      ),
    );
  }
}

class InfiniteSlideImages extends StatelessWidget {
  const InfiniteSlideImages({
    super.key,
    required this.images,
    this.height = 320,
    this.itemWidth = 215,
    this.itemMargin = 8,
    this.duration = const Duration(seconds: 5),
  }) : startReverse = false;

  const InfiniteSlideImages.startInReverse({
    super.key,
    required this.images,
    this.height = 320,
    this.itemWidth = 215,
    this.itemMargin = 8,
    this.duration = const Duration(seconds: 5),
  }) : startReverse = true;

  final List<String> images;
  final double height;
  final double itemWidth;
  final double itemMargin;
  final Duration duration;
  final bool startReverse;

  @override
  Widget build(BuildContext context) {
    final repeated = [...images, ...images];

    final begin = startReverse ? const Offset(-.15, 0) : const Offset(0, 0);
    final end = startReverse ? const Offset(0, 0) : const Offset(-.15, 0);

    return SizedBox(
      height: height,

      child: OverflowBox(
        maxWidth: .infinity,

        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: .horizontal,

          child: Animate(
            onComplete: (controller) => controller.repeat(reverse: true),

            effects: [
              SlideEffect(
                curve: Curves.linear,
                duration: duration,
                begin: begin,
                end: end,
              ),
            ],

            child: Row(
              children: repeated.map((url) {
                return Padding(
                  padding: .symmetric(horizontal: itemMargin),

                  child: ClipRRect(
                    borderRadius: .circular(24),

                    child: Container(
                      width: itemWidth,

                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(url),
                          fit: .cover,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
