import 'package:go_mart/src/utils/utils.dart';
import 'package:flutter/material.dart';

import 'pages/onboarding/onboarding.page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,

      home: const OnboardingPage(),
    );
  }
}
