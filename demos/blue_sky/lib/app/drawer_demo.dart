import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: ListView(
              // padding: EdgeInsets.all(6.0),
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    'Tom',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text('tom@edu.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        AssetImage('images/mylogo_192.png', package: 'app')
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image:DecorationImage(
                      image: NetworkImage('https://img.icons8.com/office/2x/google-logo.png'),
                      fit:BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), 
                      BlendMode.hardLight)
                    ),
                  ),
                ),
                ListTile(
                  title: Text('message'),
                  leading: Icon(
                    Icons.message,
                    size: 20.0,
                    color: Colors.black12,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('favorite'),
                  leading: Icon(
                    Icons.favorite,
                    size: 20.0,
                    color: Colors.black12,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('settings'),
                  leading: Icon(
                    Icons.settings,
                    size: 20.0,
                    color: Colors.black12,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
  }

}