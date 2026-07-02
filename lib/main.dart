import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(Glass());
}

class Glass extends StatelessWidget {
  const Glass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Image.asset('lib/images/Coolimage.jpg', fit: BoxFit.cover),
            ),

            // Glass card
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                // enabled: false,
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Cool Glass-like card", style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,)),
                ),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
