import 'package:flutter/material.dart';

class MainDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E2C),
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(Icons.monetization_on, color: Colors.amber),
          SizedBox(width: 5),
          Center(child: Text("\$150,000", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          // القسم العلوي: معلومات اللاعب والطاقة
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)), // صورة اللاعب
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Leo Silva", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                    Text("OVR: 75 | ST", style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 10),
                    Text("Energy: 90%", style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),
          
          // شبكة الأزرار للتحكم بالمسيرة (Life Simulation & Matches)
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                _buildMenuCard(Icons.sports_soccer, "Play Match", Colors.green, () {}),
                _buildMenuCard(Icons.fitness_center, "Training", Colors.orange, () {}),
                _buildMenuCard(Icons.house, "Lifestyle & Assets", Colors.purple, () {}),
                _buildMenuCard(Icons.newspaper, "News & Media", Colors.cyan, () {}),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMenuCard(IconData icon, String title, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: color, width: 2)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            SizedBox(height: 10),
            Text(title, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}