import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../widgets/widgets.dart'
    show
        AskAnythingTextField,
        BottomNavigatorItem,
        QuickChatOptions,
        BottomNavigator,
        HomeAppBar;
import '../../utils/theme/palette.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tab = useState(BottomNavigatorItem.search);

    return Scaffold(
      appBar: const HomeAppBar(),

      body: Center(
        child: Column(
          mainAxisSize: .min,
          children: [
            Padding(
              padding: const .symmetric(horizontal: 20),
              child: Text(
                'Need anything?',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: .center,
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const .symmetric(horizontal: 20),
              child: Text(
                'Our smart AI assistant helps your find exactly what\nyou need-faster and easier than ever',
                textAlign: .center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Palette.secondary,
                  letterSpacing: .2,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Padding(
              padding: .symmetric(horizontal: 20),
              child: AskAnythingTextField(),
            ),

            const SizedBox(height: 18),

            const QuickChatOptions(),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigator(
        onTap: (value) => tab.value = value,
        tab.value,
      ),
    );
  }
}
