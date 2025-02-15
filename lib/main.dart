import 'package:flutter/material.dart';

import 'features/splash/presentation/views/spalsh_view.dart';

void main() {
  runApp(const FruitHup());
}

class FruitHup extends StatelessWidget {
  const FruitHup({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('ar'),
      home: SplashView(),
    );
  }
}
