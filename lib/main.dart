import 'package:flutter/material.dart';
import 'package:myapp/config/routes.dart';
import 'package:myapp/cubit/home.dart';
import 'package:myapp/getx/home.dart';
import 'package:myapp/provider/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: homeRoute,
      routes: {
        homeRoute: (context) => MyHomePage(),
        getxHomeRoute: (context) => HomeGetX(),
        providerHomeRoute: (context) => HomeProvider(),
        cubitHomeRoute: (context) => HomeCubit()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Choose your mode"),
        ),
        body:
            ListView() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
