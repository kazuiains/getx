import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/main_controller.dart';
import 'package:getx/models/main_model.dart';

void main() {
  runApp(AppObs());
}

class AppObs extends StatelessWidget {
  AppObs({Key? key}) : super(key: key);

  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Obx(
          () => Column(
            children: [
              Text(
                  "nama saya ${controller.model1.name} umur saya ${controller.model1.age}"),
              Text(
                  "salam kenal, nama saya ${controller.model2.value.name} umur saya ${controller.model2.value.age}"),
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.changeUpperCase();
            controller.countAge();
          },
        ),
      ),
    );
  }
}

class AppGetx extends StatelessWidget {
  const AppGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(""),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class AppBuilder extends StatelessWidget {
  const AppBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(""),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}
