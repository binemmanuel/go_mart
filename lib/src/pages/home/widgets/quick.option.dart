import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/theme/palette.dart';
import '../entities/quick.chat.dart';

class QuickOption extends StatelessWidget {
  const QuickOption(this.chat, {super.key});

  final QuickChat chat;

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
        padding: const .symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisSize: .min,
          spacing: 10,

          children: [
            Icon(chat.icon.iconData, color: chat.icon.color, size: 18),

            Text(
              chat.label,
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(fontWeight: .w500, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
