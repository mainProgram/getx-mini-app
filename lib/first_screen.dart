import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/HomeController.dart';
import 'package:getx/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());

    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              Obx(() => Column(
                children: [
                  Text(
                      controller.count.value.toString(),
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center
                  ),
                  ElevatedButton(
                    child: const Text('Go to Second Screen'),
                    onPressed: () {
                      // Get.to(const SecondScreen());
                      Get.toNamed('/second');
                    },
                  ),
                ],
              )),
          ],
          // children: [
          //   GetX<HomeController>(
          //   init: HomeController(), builder: (controller) {
          //     return Column(
          //       children: [
          //         Text(
          //             controller.count.value.toString(),
          //             style: Theme.of(context).textTheme.headlineMedium,
          //             textAlign: TextAlign.center
          //         ),
          //         ElevatedButton(
          //           child: const Text('Go to Second Screen'),
          //           onPressed: () {
          //             // Get.to(const SecondScreen());
          //             Get.toNamed('/second');
          //           },
          //         ),
          //       ],
          //     );
          //   }),
          // ],
        )
    );
  }
}
