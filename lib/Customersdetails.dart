import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customer extends StatefulWidget {
  const customer({Key? key}) : super(key: key);

  @override
  _customerState createState() => _customerState();
}

class _customerState extends State<customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const  Text("ታክሲዬ"),
          centerTitle: true,
        ),
        body: getlistview(),
    );
  }
  List<String> Getlistitems(){
    var items= List<String>.generate(50, (index) {
      return "Taxiye Customer $index";
    });
    return items;

  }
  Widget getlistview(){
    var listitems= Getlistitems();
    var listview= ListView.builder(
      itemCount: 50,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              title: Text(listitems[index]),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('image/image.png'),
              ),
         

            ),
          );
        }
    );
    return listview;
  }
}
