import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/theme/palette.dart';

class AskAnythingTextField extends StatelessWidget {
  const AskAnythingTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.brightnessOf(context) == .dark;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: const .all(.circular(50)),
        border: .all(
          color: isDarkMode ? Palette.secondary : Colors.transparent,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ).copyWith(left: 20, right: 5),
        child: Row(
          spacing: 10,
          children: [
            const Icon(CupertinoIcons.camera),

            Expanded(
              child: TextField(
                textInputAction: .search,
                onTapOutside: (_) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                  hintText: 'Ask Anything...',
                  hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: .w500,
                    fontSize: 18,
                  ),
                  border: .none,
                ),
              ),
            ),

            IconButton.filled(
              onPressed: () {},

              icon: const Icon(CupertinoIcons.mic_fill),
            ),
          ],
        ),
      ),
    );
  }
}
