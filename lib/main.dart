import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: MyHome(),
    );
  }
}
class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Assignment03'),

      ),
      drawer: SafeArea(child:
      Drawer(

        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 150,
                  backgroundImage: NetworkImage("https://cdn.siasat.com/wp-content/uploads/2021/03/srk.jpg"),
                ),
                accountName: Text('Kazi Shamim'), accountEmail: Text('kazishamim.info@gmail.com')),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: (){

              },
            ),
            ListTile(
              title: Text('Contact'),
              leading: Icon(Icons.phone),
              onTap: (){

              },

            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
              onTap: (){

              },

            ),
          ],
        ),
      ),),
      body: Scrollbar(
        thickness: 10,
        radius: Radius.circular(15),
        thumbVisibility: true,
        child: ListView.builder(
            itemCount: 300,
            reverse: true,
            itemBuilder: (context,index){
              return Text('${index + 1}'+  '  Kazi Shamim');

            }),


      )
    );
  }
}

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Assignment03'),

      ),
      drawer: SafeArea(child:
      Drawer(

        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 150,
                  backgroundImage: NetworkImage("https://cdn.siasat.com/wp-content/uploads/2021/03/srk.jpg"),
                ),
                accountName: Text('Kazi Shamim'), accountEmail: Text('kazishamim.info@gmail.com')),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: (){

              },
            ),
            ListTile(
              title: Text('Contact'),
              leading: Icon(Icons.phone),
              onTap: (){

              },

            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
              onTap: (){

              },

            ),
          ],
        ),
      ),),
      body: ListView.builder(
        itemCount: 20,
          itemBuilder: (context, index){
            return Text('Kazi Shamim');

      }

      ),
    );
  }
}





