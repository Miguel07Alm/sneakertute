import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakertute/pages/home_page.dart';
import 'package:sneakertute/pages/intro_page.dart';

import 'models/cart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, index) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          '/home': (context) => HomePage(),
        },
      ),
    );
  }
}
