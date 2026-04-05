import 'package:flutter/material.dart';
import 'package:football_legend_2026/screens/SelectClubScreen%20.dart';

class CreatePlayerScreen extends StatefulWidget {
  @override
  _CreatePlayerScreenState createState() => _CreatePlayerScreenState();
}

class _CreatePlayerScreenState extends State<CreatePlayerScreen> {
  final _nameController = TextEditingController();
  String selectedNationality = 'Brazil';
  int age = 18;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Your Legend"), backgroundColor: Color(0xFF101018)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Player Name', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Age: $age", style: TextStyle(fontSize: 18)),
                Slider(
                  value: age.toDouble(),
                  min: 16, max: 25,
                  onChanged: (val) => setState(() => age = val.toInt()),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Height: ${height}cm", style: TextStyle(fontSize: 18)),
                Slider(
                  value: height.toDouble(),
                  min: 160, max: 210,
                  onChanged: (val) => setState(() => height = val.toInt()),
                ),
              ],
            ),
            // هنا تضع قائمة منسدلة للجنسية (Dropdown)
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // الانتقال لشاشة اختيار الدوري والنادي لتوقيع العقد
                Navigator.push(context, MaterialPageRoute(builder: (context) => SelectClubScreen()));
              },
              child: Text("Next: Choose Club"),
            )
          ],
        ),
      ),
    );
  }
}