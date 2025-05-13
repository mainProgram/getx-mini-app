import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/screens/home_screen.dart';


class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              child: const Text('Go to Home Screen without back'),
              onPressed: () {
                Get.offAllNamed("/");
              },
            ),
          ],
        )
    );
  }
}
