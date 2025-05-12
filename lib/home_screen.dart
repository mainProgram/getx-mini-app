import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/HomeController.dart';

import 'first_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            GetX<HomeController>(
            init: HomeController(), builder: (controller) {
              return Column(
                children: [
                  Text(
                      controller.count.value.toString(),
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center
                  ),
                  ElevatedButton(
                    child: const Text('Go to First Screen') ,
                    onPressed: () {
                      controller.increment();
                      // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const FirstScreen()));
                      // Get.to(const FirstScreen(), transition: Transition.leftToRight);
                      // Get.toNamed('/first');
                    },
                  ),
                ],
              );
            }),
          ],
        )
    );
  }
}