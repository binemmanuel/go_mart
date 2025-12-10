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
              'assets/images/watch-1.jpg',
            ],
          ),

          InfiniteSlideImages.startInReverse(
            images: [
              'assets/images/wrist-watch-1.jpg',
              'assets/images/watch-1.jpg',
              'assets/images/wrist-watch.jpg',
              'assets/images/male-watch.jpg',
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
    this.duration = _duration,
  }) : startReverse = false;

  const InfiniteSlideImages.startInReverse({
    super.key,
    required this.images,
    this.height = 320,
    this.itemWidth = 215,
    this.itemMargin = 8,
    this.duration = _duration,
  }) : startReverse = true;

  static const _duration = Duration(seconds: 15);

  final List<String> images;
  final double height;
  final double itemWidth;
  final double itemMargin;
  final Duration duration;
  final bool startReverse;

  @override
  Widget build(BuildContext context) {
    final repeated = [...images, ...images];

    final scrollExtent = -((images.length - 1) / 10);

    final double begin = startReverse ? scrollExtent : 0;
    final double end = startReverse ? 0 : scrollExtent;

    return SizedBox(
      height: height,

      child: OverflowBox(
        maxWidth: .infinity,

        child:
            Row(
                  children: repeated.map((url) {
                    return Container(
                      width: itemWidth,
                      margin: .symmetric(horizontal: itemMargin),

                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(url),
                          fit: .cover,
                        ),
                        borderRadius: .circular(24),
                      ),
                    );
                  }).toList(),
                )
                .animate(
                  onComplete: (controller) => controller.repeat(reverse: true),
                )
                .slideX(
                  curve: Curves.linear,
                  duration: duration,
                  begin: begin,
                  end: end,
                ),
      ),
    );

    /* return SizedBox(
      height: height,

      child: OverflowBox(
        maxWidth: .infinity,

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
              return Container(
                width: itemWidth,
                margin: .symmetric(horizontal: itemMargin),

                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(url), fit: .cover),
                  borderRadius: .circular(24),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    ); */
  }
}
