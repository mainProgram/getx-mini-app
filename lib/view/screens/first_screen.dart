import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/HomeController.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Name'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GetBuilder<HomeController>( builder: (controller) {
              return Column(
                children: [
                  Text(
                      controller.name,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center
                  ),
                ],
              );
            }),
            ElevatedButton(
              child: const Text('Set name') ,
              onPressed: () {
                controller.displayName();
                // Get.to(() => const FirstScreen(), transition: Transition.leftToRight);
              },
            ),
            ElevatedButton(
              child: const Text('Display name') ,
              onPressed: () {
                controller.getSavedName();
                // Get.to(() => const FirstScreen(), transition: Transition.leftToRight);
              },
            ),
            ElevatedButton(
              child: const Text('Delete name') ,
              onPressed: () {
                controller.deleteSavedName();
              },
            ),
          ],
        )
    );
  }
}
