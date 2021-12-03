import 'package:flutter/material.dart';
import 'package:lo_menu/shared/values/custom_colors.dart';

AppBar getHomeAppBar() {
  return AppBar(
    title: const Text("Restaurantes"),
    centerTitle: true,
    backgroundColor: CustomColors().getappBarMainColor(),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ))
    ],
  );
}
