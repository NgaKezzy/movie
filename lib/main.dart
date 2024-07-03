import 'package:flutter/material.dart';
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:project_watch_movie/ui/bottom_bar.dart';
import 'package:project_watch_movie/ui/controller/movie_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MovieController(),
        ),
      ],
      child: const MaterialApp(
        title: 'Watch movie',
        home: BottomBar(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
