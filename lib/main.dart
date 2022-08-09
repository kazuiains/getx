import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/main_controller.dart';
import 'package:getx/models/main_model.dart';

void main() {
  runApp(AppBuilderUniqId());
}

//menggunakan OBS
class AppObs extends StatelessWidget {
  AppObs({Key? key}) : super(key: key);

  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Obx(
          () => Column(
            children: [
              Text("nama saya ${controller.model1.name} umur saya ${controller.model1.age}"),
              Text("salam kenal, nama saya ${controller.model2.value.name} umur saya ${controller.model2.value.age}"),
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

//menggunakan getx
class AppGetx extends StatelessWidget {
  AppGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GetX<MainController>(
            builder: (controller) => Column(
              children: [
                Text("nama saya ${controller.model1.name} umur saya ${controller.model1.age}"),
                Text("salam kenal, nama saya ${controller.model2.value.name} umur saya ${controller.model2.value.age}"),
              ],
            ),
            init: MainController(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.find<MainController>().countAge();
            Get.find<MainController>().changeUpperCase();
          },
        ),
      ),
    );
  }
}

//menggunakan builder
class AppBuilder extends StatelessWidget {
  AppBuilder({Key? key}) : super(key: key);

  //jika tidak ingin pakai init deklarasikan put
  final mainC = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GetBuilder<MainController>(
            builder: (controller) => Text("nama saya ${controller.model3.name} umur saya ${controller.model3.age}"),
            // init: MainController(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //jika memakai init
            // Get.find<MainController>().changeSimple();

            //jika tidak memakai init
            mainC.changeSimple();
          },
        ),
      ),
    );
  }
}

class AppBuilderUniqId extends StatelessWidget {
  AppBuilderUniqId({Key? key}) : super(key: key);

  final mainC = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GetBuilder<MainController>(
            id: "yusuf",
            builder: (controller) => Text("nama saya ${controller.model4.name} umur saya ${controller.model4.age}"),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            mainC.changeSimple2();
          },
        ),
      ),
    );
  }
}
