import 'package:flutter/material.dart';
import 'package:lo_menu/Screens/Menu/body.dart';
import 'package:lo_menu/Screens/Profile/profile_page.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search_rounded),
            onPressed: () {},
          )
        ],
      ),
      drawer: buildDrawer(),
      body: Body(),
      backgroundColor: Colors.white,
    );
  }
}

class buildDrawer extends StatelessWidget {
  const buildDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Perfil Teste'),
            accountEmail: Text('testando@teste.com'),
            currentAccountPicture: CircleAvatar(
              radius: 30.0,
              child: Text(
                'T',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite_rounded),
            title: Text('Favoritos'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.sports_bar_rounded),
            title: Text('Bebidas'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.room_service_rounded),
            title: Text('Pratos'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.cake_rounded),
            title: Text('Sobremesas'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.redeem_rounded),
            title: Text('Cupons'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Minha conta'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
        ],
      ),
    );
  }
}
