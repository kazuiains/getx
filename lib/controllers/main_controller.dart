import 'package:get/get.dart';
import 'package:getx/models/main_model.dart';

class MainController extends GetxController {
  var model1 = Main1Model();
  var model2 = Main2Model(name: "adira", age: 0).obs;

  changeUpperCase() {
    model1.name.value = model1.name.value.toUpperCase();
    model2.update((val) {
      print("data upperCase: $val");
      model2.value.name = model2.value.name.toString().toUpperCase();
    });
  }

  countAge() {
    model1.age = model1.age++;
    model2.update((val) {
      print("data age: $val");
      model2.value.age = model2.value.age++;
    });
  }
}
