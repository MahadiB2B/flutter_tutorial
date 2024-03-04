


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
MyAlertDialog(context){
  showDialog(context: context,
      builder: (BuildContext context){
    return Expanded(child:
    AlertDialog(
title: const Text("Alert !"),
content: const Text("Do You Want to Deleted"),
actions: [
  TextButton(onPressed: (){MySnackBar("Deleted Sucess",context );Navigator.of(context).pop();}, child: const Text("Yes")),
  TextButton(onPressed: (){Navigator.of(context).pop();}, child: const Text("No")),
],
    ),);
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Mahadi App"),

      backgroundColor:Colors.teal,
        elevation: 2,
        toolbarHeight:70,
        titleSpacing: 35,
        actions: [
          IconButton(onPressed: (){MySnackBar("This is Camera ", context);}, icon:const Icon(Icons.add_a_photo)),
          IconButton(onPressed: (){MySnackBar("This is Searce Bar", context);}, icon:const Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("This is More Button", context);}, icon:const Icon(Icons.more_vert))
        ],
      ),
floatingActionButton: FloatingActionButton(onPressed: (){},

  backgroundColor:(Colors.black54),
  elevation: 10,
  child:const Icon(Icons.add,color: Colors.white,),
),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
          items: const[
             BottomNavigationBarItem(icon: Icon(Icons.add_call,color: Colors.black,), label: "Call Now",backgroundColor: Colors.teal),
            BottomNavigationBarItem(icon: Icon(Icons.add_alert_rounded,color: Colors.black,), label: "Notification",backgroundColor: Colors.teal),
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,), label: "Home",backgroundColor: Colors.teal),
            BottomNavigationBarItem(icon: Icon(Icons.comment_outlined,color: Colors.black,), label: "Messege",backgroundColor: Colors.teal),
            BottomNavigationBarItem(icon: Icon(Icons.delete_sharp,color: Colors.black,), label: "Bin",backgroundColor: Colors.blue,),
      ],
        onTap: (int index){
          if (index==0){}
          if (index==1){}
          if (index==2){}
          if (index==3){}
          if (index==4){}
        },
      ) ,

      drawer: Drawer(
        child: ListView(
          children:[
          DrawerHeader(
            padding: const EdgeInsets.all(0),

             child: UserAccountsDrawerHeader(
               decoration: const BoxDecoration(color: Colors.black),
                 accountName:const Text("Mahadi Hasan"),
          accountEmail:const Text("mahadib2b@gmail.com"),
               currentAccountPicture: Image.network("https://avatars.githubusercontent.com/u/153096844?…00&u=d9c6f32ad4ec53bf7449faccdec60ac21f2bbc14&v=4"),

             ),
             ),
            ListTile(
              leading: const Icon(Icons.add_alert_rounded),
              title:const Text("Notification"),
              onTap: (){},
            ),
            ListTile(
              leading:const Icon(Icons.add_call),
              title:const Text("Call Now"),
              onTap:(){},
            ),
            ListTile(
              leading:const Icon(Icons.add_a_photo),
            title:const Text("Camera"),
              onTap:(){},
            ),


          ],

        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 250,width: 250,
            child:  ElevatedButton(onPressed: (){MyAlertDialog(context);},child: const Text("Alert",),),
          alignment: Alignment.center,
padding:const EdgeInsets.all(40),
            margin:const EdgeInsets.all(70),
            decoration:
            BoxDecoration(
                color: Colors.black54,
                border: Border.all(color:Colors.teal,width: 6,),
            borderRadius: const BorderRadius.all(Radius.circular(250),),
            ),
          ),
        ],
      ),

    );
  }

}
