import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';

import 'Customersdetails.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "GetX",
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  _MyappState createState() => _MyappState();
}
class _MyappState extends State<Myapp> {
  List<String>_itemlist=['item1','item2','item3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetxApp"),
        centerTitle: true,
      ),
      body: Column(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 58.0),
            child: ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "snackbar title",
                    "snackbar messages",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.pink,
                    borderRadius: 40,
                    animationDuration:const Duration(milliseconds: 4000),
                    backgroundGradient: const LinearGradient(colors: [Colors.yellow,Colors.pink]),
                    titleText:const Text("Snackbar title Text"),
                    borderWidth: 2,
                    borderColor: Colors.black,
                    messageText:const Text(
                        "message Text",
                      // style: TextStyle(
                      //   fontSize: 20,
                      //   fontWeight: FontWeight.bold,
                      //
                      // ),
                    ),
                    boxShadows: [
                      const BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(30,40),
                        spreadRadius: 30,
                        blurRadius: 40,
                      )
                    ],
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    mainButton: TextButton(
                        onPressed: (){}, child:const Text("retry")),
                    overlayBlur: 5,
                    onTap: (_){},
                    overlayColor: Colors.indigo,
                  );
                },
                child: const Text('showSandbar'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 58.0),
            child: ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: "default Dialgo",
                    middleText: "this is a message text for Dialog",
                    titleStyle:const  TextStyle(fontSize: 15),
                    middleTextStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                    ),
                   // content: Row(
                   //   children: [
                   //   ],
                   //
                   // ),
                   buttonColor: Colors.pink,
                   textConfirm: 'submit',
                    textCancel: 'Cancel',
                    confirmTextColor: Colors.green,
                    cancelTextColor: Colors.red,
                    onCancel: (){},
                    onConfirm: (){},
                    // cancel:const  Text(
                    //   "new cancels",
                    // ),
                    // confirm: const Text(
                    //   "new confirm",
                    //   style: TextStyle(
                    //     color: Colors.yellow,
                    //   ),
                    // ),
                    // actions: [
                    //   ElevatedButton(
                    //       onPressed:(){},
                    //       child:const  Text("Back")
                    //   ),
                    //   ElevatedButton(
                    //       onPressed:(){},
                    //       child:const  Text("Back")
                    //   ),
                    // ]

                  );
                }, child: const Text("showDialog")),
          ),
          ElevatedButton(
              onPressed: (){
                Get.bottomSheet(
                  SizedBox(
                    height: 250,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text("Light Theme"),
                          onTap:(){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text("Dark Theme"),
                          onTap:()=> Get.changeTheme(ThemeData.dark()),
                        ),
                      ],
                    ),
                  ),
                  isDismissible: true,
                  backgroundColor: Colors.purple,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),

                    // side: BorderSide(
                    //   color: Colors.pink,
                    //   width: 8,
                    //
                    // )


                  ),
                  elevation: 3,
                  enableDrag: false,


                );


              },
              child:const Text("Bottom Shhet"),
          ),
          ElevatedButton(
              onPressed: (){},
              child:const Text("GotoHomePage"))
        ],
      ),
      drawer: const Drawer(
        child: drawers(),
      )
    );
  }
}
