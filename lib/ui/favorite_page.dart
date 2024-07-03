import 'package:flutter/material.dart';
import 'package:project_watch_movie/constant.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Constants.secondaryColor,
            Constants.primaryColor,
          ]),
        ),
      ),
    );
  }
}