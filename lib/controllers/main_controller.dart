import 'package:get/get.dart';
import 'package:getx/models/main_model.dart';

class MainController extends GetxController {
  var model1 = Main1Model();
  var model2 = Main2Model(name: "adira", age: 0).obs;
  var model3 = Main2Model(name: "adira", age: 0);

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
      model2.value.age = model2.value.age + 1;
    });
  }

  changeSimple() {
    model3.name = model3.name.toUpperCase();
    model3.age = model3.age+1;
    update();
  }

}
