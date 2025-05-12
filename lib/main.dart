import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/first_screen.dart';
import 'package:getx/home_screen.dart';
import 'package:getx/second_screen.dart';
import 'package:getx/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => const HomeScreen(),
        ),
        GetPage(name: "/first", page: () => const FirstScreen(), transition: Transition.leftToRight),
        GetPage(name: "/second", page: () => const SecondScreen(), transition: Transition.zoom),
        GetPage(name: "/third", page: () => const ThirdScreen(), transition: Transition.fadeIn),
      ],
      // home: const HomeScreen(),
    );
  }
}
