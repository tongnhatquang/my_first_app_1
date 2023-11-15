import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Email'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            "Welcome to Flutter Demo",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          backgroundColor: Colors.blue,
          child: const Icon(
              Icons.create_rounded,

          ),
          onPressed: (){
          },
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    'Bill Gates',
                    style: TextStyle(fontSize: 20),
                  ),
                  accountEmail: Text('billgates123@gmail.com'),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.deepOrangeAccent,
                    child: Text(
                      'B',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ),
              ListTile(
                title
                : Text('Inbox'),
                leading
                : Icon(Icons.inbox_rounded),
              ),
              ListTile(
                title
                    : Text('Starred'),
                leading
                    : Icon(Icons.star_border),
              ),
              ListTile(
                title
                    : Text('Sent'),
                leading
                    : Icon(Icons.forward_to_inbox_outlined),
              ),
              ListTile(
                title: Text('Drafts'),
                leading: Icon(Icons.drafts),
              ),
              ListTile(
                title: Text('Trash'),
                leading: Icon(Icons.delete_outline),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            fixedColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(
                label: "Mail",
                icon: Icon(Icons.email_outlined),
              ),
              BottomNavigationBarItem(
                label: "Starred",
                icon: Icon(Icons.star_border),
              ),
              BottomNavigationBarItem(
                label: "Meet",
                icon: Icon(Icons.video_call_outlined),
              ),
            ],
            onTap: (int indexOfItem) {}),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
