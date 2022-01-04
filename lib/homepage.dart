import 'package:flutter/material.dart';

class myapps extends StatefulWidget {
  const myapps({Key? key}) : super(key: key);

  @override
  _myappsState createState() => _myappsState();
}

class _myappsState extends State<myapps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const  Text("ታክሲዬ"),
          centerTitle: true,
        ),
      body: Column(
        children: <Widget>[
          Container(
            child: Image.asset('image/image.png'),
          ),
          SizedBox(height: 6,),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/tx.png')
              )
            ),
            child: Image.asset('image/image.png'),
          ),
          const SizedBox(height: 6,),
         const Center(
           child: Text(
               "Here is Taxiye",
             style: TextStyle(
               color: Colors.pink,
               fontSize: 30,
               fontWeight: FontWeight.w700,
             ),

           ),
         ),
          const SizedBox(height: 13,),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('image/tx.png')
                )
            ),
            child: Image.asset('image/image.png'),
          ),
        ],
      )
    );
  }
}
