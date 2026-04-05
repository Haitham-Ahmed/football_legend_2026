import 'package:flutter/material.dart';

class LifestyleScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'name': 'Sports Car', 'price': '\$250,000', 'icon': Icons.directions_car, 'boost': '+10 Morale'},
    {'name': 'Luxury Villa', 'price': '\$2,500,000', 'icon': Icons.house, 'boost': '+20 Morale'},
    {'name': 'Restaurant Chain', 'price': '\$500,000', 'icon': Icons.restaurant, 'boost': 'Passive Income'},
    {'name': 'Private Jet', 'price': '\$15,000,000', 'icon': Icons.flight, 'boost': '+50 Morale'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E2C),
      appBar: AppBar(
        title: Text("Lifestyle & Investments"),
        backgroundColor: Colors.purple[800],
      ),
      body: Column(
        children: [
          // عرض الرصيد البنكي
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.black26,
            child: Column(
              children: [
                Text("Bank Balance", style: TextStyle(color: Colors.grey, fontSize: 16)),
                Text("\$1,250,000", style: TextStyle(color: Colors.greenAccent, fontSize: 32, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          // شبكة المشتريات
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(15),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15, childAspectRatio: 0.8
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                var item = items[index];
                return Card(
                  color: Color(0xFF2A2A3D),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(item['icon'], size: 50, color: Colors.amber),
                        SizedBox(height: 10),
                        Text(item['name'], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16), textAlign: TextAlign.center),
                        SizedBox(height: 5),
                        Text(item['boost'], style: TextStyle(color: Colors.lightBlueAccent, fontSize: 12)),
                        Spacer(),
                        Text(item['price'], style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                          onPressed: () {
                            // كود خصم الفلوس وإضافة العنصر للاعب
                          },
                          child: Text("Buy", style: TextStyle(color: Colors.white)),
                        )
                      ],
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