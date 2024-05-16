import 'package:flutter/material.dart';
import 'package:lesson_37/pages/home_page1.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double joylashuv = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () async {
              joylashuv = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomePage(joylashuv),
                ),
              );
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
