import 'package:flutter/material.dart';

class MatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E2C),
      appBar: AppBar(
        title: Text("Match Day"), backgroundColor: Colors.black87,
        actions: [
          // زر تخطي المباراة (Instant Result) بناء على طلب العميل
          TextButton.icon(
            icon: Icon(Icons.fast_forward, color: Colors.yellow),
            label: Text("Skip Match", style: TextStyle(color: Colors.yellow)),
            onPressed: () {
              // كود توليد النتيجة عشوائياً وانهاء المباراة فوراً
            },
          )
        ],
      ),
      body: Column(
        children: [
          // لوحة النتيجة (Scoreboard)
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.blue[900],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Your Club", style: TextStyle(color: Colors.white, fontSize: 18)),
                Text("2 - 1", style: TextStyle(color: Colors.yellow, fontSize: 30, fontWeight: FontWeight.bold)),
                Text("Real Madrid", style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          
          // الملعب 2D (هنا تبرمج الدوائر لاحقاً باستخدام Stack و Positioned)
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green[700], // لون العشب
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Center(
                child: Text("2D Pitch Simulation Area\n(Dots Moving Here)", textAlign: TextAlign.center, style: TextStyle(color: Colors.white54)),
              ),
            ),
          ),

          // الأحداث (Match Events) - الأهداف والبطاقات
          Expanded(
            flex: 1,
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                ListTile(
                  leading: Icon(Icons.sports_soccer, color: Colors.white),
                  title: Text("GOAL! Leo Silva (12')", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.style, color: Colors.yellow),
                  title: Text("Yellow Card - Casemiro (34')", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}