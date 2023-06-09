import 'package:flutter/material.dart';
import 'package:flutter_application/pages/etudiant_list_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestion Etudiant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EtudiantListPage(),
    );
  }
}
