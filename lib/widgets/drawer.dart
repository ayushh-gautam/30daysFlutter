import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final myUrl =
        "https://scontent.fbir1-1.fna.fbcdn.net/v/t39.30808-6/317940002_1537827616732069_5297697793440175768_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEjhPLIMYoRs5G8dABuDrLYNpLejdpbcks2kt6N2ltyS2Doaw9jY1I8ylPeWYPheWKXwA4vvrbFuOwwA0CDwhiV&_nc_ohc=YgG_a2nCpKAAX8rLC7k&tn=w_epZGDL3aSQTIuc&_nc_ht=scontent.fbir1-1.fna&oh=00_AfDgbKPl3--fR9uSCWSXdRDu0xqm8hj4hwnQBNnySPKjqQ&oe=63B30E4B";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: const Text('Ayush Gautam'),
                accountEmail: const Text('ayushgautam896@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(myUrl),
                ),
              )),
          const ListTile(
              leading: Icon(CupertinoIcons.home),
              iconColor: Colors.white,
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              )),
          const ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              iconColor: Colors.white,
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              )),
          const ListTile(
              leading: Icon(CupertinoIcons.mail),
              iconColor: Colors.white,
              title: Text(
                'Email me',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              )),
        ],
        ),
      
      ),
      
    );
  }
}
