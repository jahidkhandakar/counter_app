import 'package:get/get.dart';

class CounterController extends GetBuilderState {
  var count = 0.obs;

  void increment(){
    count++;
  }
}
