import 'package:flutter/material.dart';
class DrawerPages extends StatefulWidget {
  const DrawerPages({super.key});

  @override
  State<DrawerPages> createState() => _DrawerPagesState();
}

class _DrawerPagesState extends State<DrawerPages> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        children: [
          Padding(padding: EdgeInsets.all(1)),
          DrawerHeader(
              child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightBlue
            ),
            accountName: Text('MD.Naim Hosen'),
            accountEmail: Text("naiymhoshen@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  child: Text('N')
                ),
          )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("My Profile"),
            onTap: (){Navigator.pop(context);}
            ,
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Edit Profile"),
            onTap: (){Navigator.pop(context);}
            ,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: (){Navigator.pop(context);}
            ,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
            onTap: (){Navigator.pop(context);}
            ,
          ),
        ],
      ),
    );
  }
}
