import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title:const Text("homepage"),
         centerTitle: true,
       ),
      body:  Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: (){}, child:const Text("Next Page")),
          ],
        ),

      ),
    );
  }
}
