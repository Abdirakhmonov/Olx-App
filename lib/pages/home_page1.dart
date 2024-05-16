import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  final double joylashuv;
  const HomePage1(this.joylashuv, {super.key});

  @override
  State<HomePage1> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {
  final scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero,(){
      scrollController.animateTo(widget.joylashuv,
          duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(scrollController.offset);
          },
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        title: const Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () {
              scrollController.animateTo(1000,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            icon: const Icon(Icons.ac_unit),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
        child: Column(
          children: [
            ...List.generate(50, (index) {
              return Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text("Salom $index"),
                    ],
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
