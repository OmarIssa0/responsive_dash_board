import 'package:admin_dash_board/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
  // child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
