import 'package:flutter/material.dart';

class PlayerProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E2C),
      appBar: AppBar(title: Text("Player Profile"), backgroundColor: Colors.transparent, elevation: 0),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            // الكارد العلوي (الصورة والمعلومات الأساسية)
            Row(
              children: [
                CircleAvatar(radius: 50, backgroundColor: Colors.blueGrey, child: Icon(Icons.person, size: 50, color: Colors.white)),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Leo Silva", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                    Text("Striker (ST) | 20 Years Old", style: TextStyle(color: Colors.grey, fontSize: 16)),
                    Text("Value: \$15.5M | Wage: \$40k/w", style: TextStyle(color: Colors.greenAccent, fontSize: 14)),
                  ],
                )
              ],
            ),
            SizedBox(height: 30),
            // المزاج واللياقة
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatusCard("Fitness", "95%", Colors.green),
                _buildStatusCard("Morale", "Happy", Colors.blue),
                _buildStatusCard("Form", "Good", Colors.orange),
              ],
            ),
            SizedBox(height: 30),
            // الطاقات (Attributes)
            Text("Attributes", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
            Divider(color: Colors.white24),
            _buildStatBar("Pace", 85, Colors.blue),
            _buildStatBar("Shooting", 78, Colors.red),
            _buildStatBar("Passing", 70, Colors.orange),
            _buildStatBar("Dribbling", 82, Colors.purple),
            _buildStatBar("Defending", 30, Colors.grey),
            _buildStatBar("Physical", 75, Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard(String title, String value, Color color) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(color: color.withOpacity(0.2), borderRadius: BorderRadius.circular(10), border: Border.all(color: color)),
      child: Column(
        children: [
          Text(title, style: TextStyle(color: Colors.white70)),
          SizedBox(height: 5),
          Text(value, style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildStatBar(String statName, int value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(width: 80, child: Text(statName, style: TextStyle(color: Colors.white))),
          Expanded(
            child: LinearProgressIndicator(
              value: value / 100,
              backgroundColor: Colors.grey[800],
              color: color,
              minHeight: 10,
            ),
          ),
          SizedBox(width: 10),
          Text(value.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}