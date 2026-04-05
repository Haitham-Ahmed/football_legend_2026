import 'package:flutter/material.dart';
import 'package:football_legend_2026/MainMenuScreen%20.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

// ضفنا SingleTickerProviderStateMixin عشان نقدر نعمل الأنيميشن
class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    // إعدادات الأنيميشن (مدته ثانية ونص)
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    // حركة الشفافية (من مخفي إلى ظاهر)
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    // حركة الانزلاق (من تحت لفوق شوية)
    _slideAnimation = Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    // تشغيل الأنيميشن أول ما الشاشة تفتح
    _animationController.forward();

    // بعد 3.5 ثانية هينقلنا للقائمة الرئيسية
    Future.delayed(const Duration(milliseconds: 3500), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainMenuScreen()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose(); // تنظيف الميموري
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF86FF00), // الأخضر الفسفوري
      body: Center(
        // تطبيق الأنيميشن على العناصر
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'FOOTBALL ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Container(
                        color: const Color(0xFF33CCFF),
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        child: const Text(
                          '2026',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 45,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'LEGEND',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 85,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}