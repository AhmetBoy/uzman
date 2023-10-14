import 'package:flutter/material.dart';
import 'package:uzman/home_page.dart';
import 'package:uzman/pages/calisanlar/employees.dart';
import 'package:uzman/pages/firmalar/companies.dart';
import 'package:uzman/pages/servis_güzergahlari/service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Employees.routName:
            return MaterialPageRoute(builder: (context) => Employees());
          case Companies.routName:
            return MaterialPageRoute(builder: (context) => Companies());
          case CarServis.routName:
            return MaterialPageRoute(builder: (context) => CarServis());
        }
        return null;
      },
    );
  }
}
