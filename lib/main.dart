import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:football_legend_2026/screens/SplashScreen.dart';
 

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // إجبار اللعبة على وضع العرض (Landscape)
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((_) {
    runApp(const FootballLegendApp());
  });
}

class FootballLegendApp extends StatelessWidget {
  const FootballLegendApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Legend',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(), // أول شاشة هتفتح
    );
  }
}