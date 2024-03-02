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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mahadi App"),

      backgroundColor:Colors.blue,
        elevation: 2,
        toolbarHeight:70,
        titleSpacing: 35,
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.add_a_photo)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
          IconButton(onPressed: (){}, icon:Icon(Icons.more_vert))
        ],
      ),

    );
  }

}
