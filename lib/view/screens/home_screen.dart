import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'first_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          centerTitle: true,
          actions: [
            TextButton(onPressed: (){
              Get.toNamed('/first');
            },
            child: Text("Next"))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              child: const Text('Go to First Screen') ,
              onPressed: () {
                Get.to(() => const FirstScreen(), transition: Transition.leftToRight);
              },
            ),
          ],
        )
    );
  }
}