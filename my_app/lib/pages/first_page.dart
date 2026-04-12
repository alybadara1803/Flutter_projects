import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '🎉 W E L C O M E 🎉',
      home: Scaffold(
        appBar: AppBar(
          title: Text('🎉 W E L C O M E 🎉'),
          backgroundColor: Colors.lightBlue[200],
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Colors.lightBlue[200],
          // shape: Border(),
          child: Column(
            children: [
              DrawerHeader(child: Icon(Icons.favorite, size: 40)),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('H O M E'),
                onTap: () {
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, '/homepage');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('S E T T I N G S'),
                onTap: () {
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, '/settingspage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
