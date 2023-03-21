import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/controllers/tap_controllers.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: (){
            Get.back();
            print("Go back");
          },
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            GetBuilder<TapController>(builder: (_){
             return  Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF89dad0)
                ),
                child: Center(child: Text(controller.x.toString(),style: TextStyle(fontSize: 20,color: Colors.white),)),
              );
            }),
            GestureDetector(
              onTap: (){
                controller.decreaseX();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF89dad0)
                ),
                child: Center(child: Text("Decrease X",style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
