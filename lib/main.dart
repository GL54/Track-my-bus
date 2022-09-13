import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const TrackMyBus());
}

class TrackMyBus extends StatelessWidget {
  const TrackMyBus({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
