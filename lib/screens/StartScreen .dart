import 'package:flutter/material.dart';
import 'package:football_legend_2026/screens/CreatePlayerScreen%20.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E2C), // لون خلفية احترافي مستوحى من الصور
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FOOTBALL LEGEND 2026',
              style: GoogleFonts.bebasNeue(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            // الزر الأخضر: اختيار لاعب موجود (Real Star Mode)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(300, 60),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                // الانتقال لشاشة اختيار النجوم
              },
              child: Text(
                'PLAY AS REAL STAR',
                style: GoogleFonts.roboto(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            // الزر الأحمر: إنشاء لاعب جديد (New Legend)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: Size(300, 60),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePlayerScreen()));
              },
              child: Text(
                'CREATE NEW LEGEND',
                style: GoogleFonts.roboto(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}