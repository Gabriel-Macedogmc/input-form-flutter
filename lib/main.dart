import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:input_form/controller/form_controller.dart';
import 'package:input_form/pages/home_page.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<FormController>(FormController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
