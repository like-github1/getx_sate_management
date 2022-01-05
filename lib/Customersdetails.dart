import 'package:flutter/material.dart';
import 'package:get/get.dart';
class drawers extends StatefulWidget {
  const drawers({Key? key}) : super(key: key);

  @override
  State<drawers> createState() => _drawersState();
}
class _drawersState extends State<drawers> {
  bool isSelected=true;
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.yellow,
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget>[
                  const Expanded(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('image/txs.png'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: IconButton(
                          icon: Padding(
    padding: EdgeInsets.zero,
    child: isSelected == true
    ? const Icon(Icons.wb_sunny) : const Icon(Icons.description)),
                          onPressed: ()=>theme(isSelected),
                      ),
                    ),
                  )
                ],
              )
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }

  theme(bool isSelected) {
     switch(isSelected){
       case true:
         Get.changeTheme(ThemeData.dark());
         setState(() {
           isSelected=!isSelected;
         });
         break;
       case false:
         Get.changeTheme(ThemeData.light());
         setState(() {
         isSelected=!isSelected;
         });

     }
  }


}
