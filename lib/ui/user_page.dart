import 'package:flutter/material.dart';
import 'package:project_watch_movie/constant.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
