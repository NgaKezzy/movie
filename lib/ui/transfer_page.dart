import 'package:flutter/material.dart';
import 'package:project_watch_movie/constant.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
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