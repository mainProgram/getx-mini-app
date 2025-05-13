import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/home_binding.dart';
import 'package:getx/view/screens/first_screen.dart';
import 'package:getx/view/screens/home_screen.dart';
import 'package:getx/view/screens/second_screen.dart';
import 'package:getx/view/screens/third_screen.dart';

void main() async {
  runApp(const MyApp());
  await GetStorage.init();
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
      initialBinding: HomeBinding(),
      // home: const HomeScreen(),
    );
  }
}
