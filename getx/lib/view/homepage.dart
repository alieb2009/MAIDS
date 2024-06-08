
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/homecontroller.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sds"),
      ),
      body:
      GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller)=>
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    controller.increment();
                  }, icon: Icon(Icons.add)),
                  Text("${controller.counter}"),
                  IconButton(onPressed: (){
                    controller.deccrement();
                  }, icon: Icon(Icons.remove)),
                ],
              ),
            ],
          ),
        )

    );
  }
}
