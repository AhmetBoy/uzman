import 'package:flutter/material.dart';

class CarServis extends StatelessWidget {
  static const routName = '/routeCarServisPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Servis")),
      body: Center(
        child: Text("Servis Güzergahları", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
