import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HOME PAGE',
      home: Scaffold(
        appBar: AppBar(
          title: Text('H O M E  P A G E'),
          backgroundColor: Colors.lightBlue[200],
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Icon(Icons.favorite)),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('H O M E'),
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('S E T T I N G S'),
                onTap: () {
                  Navigator.pushNamed(context, '/settingspage');
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('I N F O'),
                onTap: () {
                  Navigator.pushNamed(context, '/infopage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
