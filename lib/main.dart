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

      backgroundColor:Colors.teal,
        elevation: 2,
        toolbarHeight:70,
        titleSpacing: 35,
        actions: [
          IconButton(onPressed: (){MySnackBar("This is Camera ", context);}, icon:Icon(Icons.add_a_photo)),
          IconButton(onPressed: (){MySnackBar("This is Searce Bar", context);}, icon:Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("This is More Button", context);}, icon:Icon(Icons.more_vert))
        ],
      ),
floatingActionButton: FloatingActionButton(onPressed: (){},child:Icon(Icons.add,color: Colors.white,),
  backgroundColor:(Colors.black54),
  elevation: 10,
),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
          items: [
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
            padding: EdgeInsets.all(0),

             child: UserAccountsDrawerHeader(
               decoration: BoxDecoration(color: Colors.black),
                 accountName: Text("Mahadi Hasan"),
          accountEmail:Text("mahadib2b@gmail.com"),
               currentAccountPicture: Image.network("https://avatars.githubusercontent.com/u/153096844?…00&u=d9c6f32ad4ec53bf7449faccdec60ac21f2bbc14&v=4"),
               currentAccountPictureSize: const Size.square(60.0),
             ),
             ),
            ListTile(
              leading:Icon(Icons.add_alert_rounded),
              title: Text("Notification"),
              onTap: (){},
            ),
            ListTile(
              leading:Icon(Icons.add_call),
              title:Text("Call Now"),
              onTap:(){},
            ),
            ListTile(
              leading:Icon(Icons.add_a_photo),
            title:Text("Camera"),
              onTap:(){},
            ),


          ],

        ),
      ),


    );
  }

}
