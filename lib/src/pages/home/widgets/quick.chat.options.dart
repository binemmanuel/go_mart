import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart' show QuickOption;
import '../entities/quick.chat.dart';

class QuickChatOptions extends StatelessWidget {
  const QuickChatOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,

      child: ListView.separated(
        padding: const .symmetric(horizontal: 20),
        scrollDirection: .horizontal,
        itemCount: QuickChat.values.length,

        itemBuilder: (context, index) {
          final chat = QuickChat.values[index];
          return QuickOption(chat);
        },

        separatorBuilder: (context, index) => const SizedBox(width: 10),
      ),
    );
  }
}
