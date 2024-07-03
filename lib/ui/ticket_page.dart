import 'package:flutter/material.dart';
import 'package:project_watch_movie/constant.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
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
