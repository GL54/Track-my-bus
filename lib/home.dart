import 'package:flutter/material.dart';
import 'apis.dart';
import 'models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Models> testData = [];
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final noteList = await ModelDb().getAllData();
      testData.clear();
      setState(() {
        testData.addAll(noteList!);
      });
    });
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Track My Bus",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: List.generate(testData.length, (index) {
            final val = testData[index];
            return Display(id: val.id!, todo: val.todo!);
          }),
        ),
      ),
    );
  }
}

class Display extends StatelessWidget {
  final int id;
  final String todo;
  const Display({
    super.key,
    required this.id,
    required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print("hello");
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Text(todo, style: const TextStyle(color: Colors.black)))
          ],
        ));
  }
}
