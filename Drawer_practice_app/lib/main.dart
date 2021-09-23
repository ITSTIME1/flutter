import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: new Text(
          'Gradient',
          style: new TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            fontSize: 36.0,
          ),
        ),
        centerTitle: true,
        flexibleSpace: new Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.blue,
                Colors.yellow,
              ],
            ),
          ),
        ),
        elevation: 0.0,
        actions: [
          // appbar title put right
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // when button or clicked event occur
              print('Shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ], // flay
      ),
      drawer: Drawer(
        child: ListView(
          // list
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/useraccout.png'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/useraccout.png'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: Text('ITSTIME'),
              accountEmail: Text('itstime0809@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[850]),
              title: Text('Home'),
              onTap: () {
                print("Home pressed");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading:
                  Icon(Icons.settings_applications, color: Colors.grey[850]),
              title: Text('Setting'),
              onTap: () {
                print("Setting pressed");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone, color: Colors.grey[850]),
              title: Text('Contact'),
              onTap: () {
                print("Contact pressed");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850]),
              title: Text('Q&A'),
              onTap: () {
                print("Q&A pressed");
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
