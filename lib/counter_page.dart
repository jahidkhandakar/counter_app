import 'package:counter_app/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: Text(
          "Counter App",
          style: TextStyle(
              color: Colors.blue[700],
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 1.5,
              wordSpacing: 2,
              shadows: [
                Shadow(
                  color: Colors.grey,
                  offset: Offset(9, 9),
                  blurRadius: 5,
                ),
              ]
            ),         
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() => Container(
          height: 100,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.amber[500],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(9, 9),
                blurRadius: 5,
              ),
            ],
          ),
          child: Center(           
            child: Text(
                  "Counter: ${controller.count}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber[500],
        shape: CircleBorder(),
        onPressed: controller.increment,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
