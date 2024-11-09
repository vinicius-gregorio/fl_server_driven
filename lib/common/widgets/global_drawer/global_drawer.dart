import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GlobalDrawer extends StatelessWidget {
  const GlobalDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Modular.to.navigate('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Renderer'),
            onTap: () {
              Modular.to.navigate('/renderer/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Exporter'),
            onTap: () {
              Modular.to.navigate('/exporter/home');
            },
          ),
        ],
      ),
    );
  }
}
