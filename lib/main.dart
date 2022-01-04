import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';

import 'Customersdetails.dart';
import 'homepage.dart';
void main(){


  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Taxiyee",
    home: myapp(),
  ));
}
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title:const  Text("ታክሲዬ"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 70,top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: (){
                  Get.snackbar(
                      "title of the SnackBar",
                      "message about SnackBar",
                    colorText: Colors.white,
                    duration: const Duration(milliseconds: 4000),
                    animationDuration:const Duration(milliseconds: 4000),
                    titleText:const  Text("new title text"),
                    messageText:const  Text("New message Text"),
                    maxWidth: width,
                    backgroundColor: Colors.black,
                    isDismissible: true,
                    backgroundGradient: const LinearGradient(
                        colors: [
                          Colors.pink, Colors.yellow,
                        ]
                    )
                  );
                },
                child:const Text("showSnackBar")
            ),
            const SizedBox(height: 15,),
            ElevatedButton(
                onPressed: (){
                  Get.defaultDialog(
                    title: "Taxye Dialog",
                    middleText: "Taxiye Message for Customers",
                    textCancel: "Cancel",
                    textConfirm: "Accept now",

                  );
                },
                child:const Text("show Taxiye Message"),
            ),
           const  SizedBox(height: 15,),
            ElevatedButton(
              onPressed: (){
                Get.to(()=>const myapps());
              },
              child:const Text("show Taxiye Car"),
            ),
            const  SizedBox(height: 15,),
            ElevatedButton(
              onPressed: (){
                Get.to(()=>const customer());
              },
              child:const Text("show taxiye Customer "),
            ),

          ],

        ),
      ),
    );
  }
}
