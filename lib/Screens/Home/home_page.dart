import 'package:flutter/material.dart';
import 'package:lo_menu/Screens/Home/widgets/home_appbar.dart';
import 'package:lo_menu/Screens/Home/widgets/home_content.dart';
import 'package:lo_menu/Screens/Home/widgets/home_drawer.dart';
import 'package:lo_menu/Screens/Menu/menu_screen.dart';

import 'widgets/home_fab.dart';
import 'widgets/home_list_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HomeListModel> listModels = [
    HomeListModel(
        title: "Fausto e Manuel", assetIcon: "assets/icons/faustoemanu.png"),
    HomeListModel(
        title: "Capricho Gaúcho", assetIcon: "assets/icons/caprichogaucho.png"),
    HomeListModel(
        title: "Os Pimentas", assetIcon: "assets/icons/ospimentas.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHomeAppBar(),
      drawer: getHomeDrawer(),
      floatingActionButton: getHomeFab(context, listModels, refreshPage),
      body: HomePageContent(
        listModels: listModels,
      ),
    );
  }

  go_toMenu() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MenuScreen()));
  }

  refreshPage() {
    setState(() {});
  }
}
