import 'package:flutter/material.dart';
import 'package:uzman/widgets/navigation_drawer.dart';

class Companies extends StatelessWidget {
  static const routName = '/routeCompaniesPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerMenu(),
      // appBar: AppBar(title: Text("Firmalar")),
      body: Row(children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text("Firmalar", style: TextStyle(fontSize: 20)),
          ),
        ),
      ]),
    );
  }
}
