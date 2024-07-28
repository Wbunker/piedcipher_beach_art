import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Goa',
      home: Goa(),
    );
  }
}

class Goa extends StatelessWidget {
  const Goa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            // The background from top to bottom
            Column(
              children: [
                // The sky
                Expanded(
                  flex: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFC3EAFD).withOpacity(.6),
                          const Color(0xFFC3EAFD).withOpacity(.8),
                          const Color(0xFFC3EAFD),
                        ],
                      ),
                    ),
                    child: const SizedBox.expand(),
                  ),
                ),
                // The sea
                Expanded(
                  flex: 2,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          const Color(0xFF85C4EF).withOpacity(.8),
                          const Color(0xFF85C4EF),
                          const Color(0xFF85C4EF).withOpacity(.9),
                          const Color(0xFF85C4EF),
                          const Color(0xFF85C4EF).withOpacity(.8),
                          const Color(0xFF85C4EF),
                        ],
                      ),
                    ),
                    child: const SizedBox.expand(),
                  ),
                ),
                // The beach
                Expanded(
                  flex: 6,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFFFFECBC),
                          const Color(0xFFFFECBC).withOpacity(.8),
                          const Color(0xFFFFECBC).withOpacity(.6),
                          const Color(0xFFFFECBC).withOpacity(.4),
                          const Color(0xFFFFECBC).withOpacity(.2),
                          Colors.white,
                        ],
                      ),
                    ),
                    child: const SizedBox.expand(),
                  ),
                ),
              ],
            ),

            // This is the sun
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(121, 255, 255, 0),
                ),
                child: SizedBox(
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
