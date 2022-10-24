import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:input_form/controller/form_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formController = GetIt.I.get<FormController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SafeArea(
          child: Column(
            children: [
              Observer(
                builder: (_) => TextField(
                  onChanged: formController.setEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    labelText: 'Email',
                    hintText: 'Informe seu Email',
                    errorText: formController.error.email,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: formController.setPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    labelText: 'Senha',
                    hintText: 'Informe sua Senha',
                    errorText: formController.error.password,
                  ),
                ),
              ),
              GestureDetector(
                onTap: formController.validateAll,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blueAccent),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
