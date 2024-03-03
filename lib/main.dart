import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity(),
    debugShowCheckedModeBanner: false,

    );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

MySnackBar(message,context){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar
    (content:Text(message)));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mahadi App"),

      backgroundColor:Colors.blue,
        elevation: 2,
        toolbarHeight:70,
        titleSpacing: 35,
        actions: [
          IconButton(onPressed: (){MySnackBar("This is Camera ", context);}, icon:Icon(Icons.add_a_photo)),
          IconButton(onPressed: (){MySnackBar("This is Searce Bar", context);}, icon:Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("This is More Button", context);}, icon:Icon(Icons.more_vert))
        ],
      ),
floatingActionButton: FloatingActionButton(onPressed: (){},child:Icon(Icons.add),
  backgroundColor:(Colors.blue),
  elevation: 10,
),
    );
  }

}
