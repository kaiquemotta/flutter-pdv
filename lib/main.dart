import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:front/screens/template/side_component.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        home: SidebarComponent(),
        title: 'Namer App',
        theme: ThemeData.dark()
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

