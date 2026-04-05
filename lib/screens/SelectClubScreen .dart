import 'package:flutter/material.dart';

class SelectClubScreen extends StatefulWidget {
  @override
  _SelectClubScreenState createState() => _SelectClubScreenState();
}

class _SelectClubScreenState extends State<SelectClubScreen> {
  int selectedLeagueIndex = 0;
  
  // بيانات وهمية للتجربة
  final List<String> leagues = ['England', 'Spain', 'Italy', 'Germany', 'France'];
  final List<Map<String, dynamic>> clubs = [
    {'name': 'Manchester Utd', 'rating': 85, 'budget': '\$250M'},
    {'name': 'Arsenal', 'rating': 84, 'budget': '\$180M'},
    {'name': 'Tottenham', 'rating': 81, 'budget': '\$120M'},
    {'name': 'Newcastle Utd', 'rating': 82, 'budget': '\$300M'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1117), // لون غامق احترافي
      appBar: AppBar(title: Text("Select Your First Club"), backgroundColor: Colors.blueAccent),
      body: Row(
        children: [
          // القائمة الجانبية للدوريات
          Container(
            width: 120,
            color: Color(0xFF161B22),
            child: ListView.builder(
              itemCount: leagues.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(leagues[index], style: TextStyle(color: Colors.white, fontSize: 14)),
                  selected: selectedLeagueIndex == index,
                  selectedTileColor: Colors.blueAccent.withOpacity(0.3),
                  onTap: () => setState(() => selectedLeagueIndex = index),
                );
              },
            ),
          ),
          // قائمة الأندية في الدوري المحدد
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: clubs.length,
              itemBuilder: (context, index) {
                var club = clubs[index];
                return Card(
                  color: Color(0xFF21262D),
                  child: ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.shield, color: Colors.black)),
                    title: Text(club['name'], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    subtitle: Text("Rating: ${club['rating']} | Budget: ${club['budget']}", style: TextStyle(color: Colors.grey)),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                      onPressed: () {
                        // هنا يتم توقيع العقد والانتقال للشاشة الرئيسية (Dashboard)
                      },
                      child: Text("Sign Contract"),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}