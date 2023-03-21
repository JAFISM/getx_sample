import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/controllers/tap_controllers.dart';
import 'package:getx_sample/first_page.dart';
import 'package:getx_sample/second_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TapController controller = Get.put(TapController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_){
              return Container(
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
                controller.increaseX();
              },
              child: Container(
                margin: EdgeInsets.all(20),
               width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF89dad0)
                ),
                child: Center(child: Text("Tap",style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>FirstPage());
                print("test");
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF89dad0)
                ),
                child: Center(child: Text("Go to First Page",style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=> SecondPage());
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF89dad0)
                ),
                child: Center(child: Text("Second Page",style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF89dad0)
                ),
                child: Center(child: Text("Tap",style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
