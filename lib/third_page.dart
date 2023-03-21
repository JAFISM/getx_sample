import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:getx_sample/controllers/list_controller.dart';
import 'package:getx_sample/controllers/tap_controllers.dart';
import 'package:get/get.dart';
import 'package:getx_sample/home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ListController listController = Get.put(ListController());
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() =>
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF89dad0)
                        ),
                        child: Center(child: Text("Total value "+Get.find<TapController>().z.toString(),style: TextStyle(fontSize: 20,color: Colors.black),)),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF89dad0)
                        ),
                        child: Center(child: Text("Y value "+Get.find<TapController>().y.value.toString(),style: TextStyle(fontSize: 20,color: Colors.black),)),
                      ),
                    ],
                  ),
              ),

              GestureDetector(
                onTap: (){
                  Get.to(()=>HomePage());
                },
                child: Container(
                  margin: EdgeInsets.all(15),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF89dad0)
                  ),
                  child: Center(child: Text("X value "+Get.find<TapController>().x.toString(),style: TextStyle(fontSize: 20,color: Colors.black),)),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Get.find<TapController>().increaseY();
                },
                child: Container(
                  margin: EdgeInsets.all(15),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF89dad0)
                  ),
                  child: Center(child: Text("Increase Y ",style: TextStyle(fontSize: 20,color: Colors.black),)),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Get.find<TapController>().totalXY();
                },
                child: Container(
                  margin: EdgeInsets.all(15),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF89dad0)
                  ),
                  child: Center(child: Text("Total X+Y",style: TextStyle(fontSize: 20,color: Colors.black),)),
                ),
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Get.find<ListController>().setValues(Get.find<TapController>().z);
                }, child: Text("Save Total",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF89dad0),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
