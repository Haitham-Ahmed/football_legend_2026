import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0F0C29), Color(0xFF302B63), Color(0xFF24243E)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -20,
              top: MediaQuery.of(context).size.height * 0.2,
              child: const Opacity(
                opacity: 0.05,
                child: Text(
                  'SOCCER',
                  style: TextStyle(color: Colors.white, fontSize: 150, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
                ),
              ),
            ),
            const Positioned(
              top: 20, right: 20,
              child: Text("0.1.1", style: TextStyle(color: Colors.white70, fontSize: 14)),
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              const Text('FOOTBALL ', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic)),
                              Container(
                                color: const Color(0xFF33CCFF),
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                child: const Text('2026', style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic)),
                              ),
                            ],
                          ),
                        ),
                        const FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text('LEGEND', style: TextStyle(color: Colors.white, fontSize: 65, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic)),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0, top: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(child: _buildSquareButton("Continue", Icons.shield, Colors.amber)),
                              const SizedBox(width: 10),
                              Expanded(child: _buildSquareButton("New Game", Icons.person_add_alt_1, Colors.cyanAccent)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Flexible(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(child: _buildSquareButton("Load Game", Icons.save, Colors.lightGreenAccent)),
                              const SizedBox(width: 10),
                              Expanded(child: _buildSquareButton("Settings", Icons.settings, Colors.white)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Flexible(flex: 1, child: _buildWideButton("Live Event Info", [const Color(0xFFFFB75E), const Color(0xFFED8F03)])),
                        const SizedBox(height: 10),
                        Flexible(flex: 1, child: _buildWideButton("More Games", [const Color(0xFF00E1D9), const Color(0xFF007A99)])),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSquareButton(String title, IconData icon, Color iconColor) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF1B4E9B),
        border: Border(bottom: BorderSide(color: Color(0xFF33CCFF), width: 4)),
        boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 5, offset: Offset(0, 3))],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 30, color: iconColor),
              const SizedBox(height: 5),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWideButton(String title, List<Color> gradientColors) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: gradientColors),
        boxShadow: const [BoxShadow(color: Colors.black45, blurRadius: 5, offset: Offset(0, 3))],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              const SizedBox(width: 15),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: const Icon(Icons.sports_soccer, color: Colors.black, size: 20),
              ),
              const SizedBox(width: 15),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(title, style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}