import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzman/controller.dart';
import 'package:uzman/pages/calisanlar/employees.dart';
import 'package:uzman/pages/firmalar/companies.dart';
import 'package:uzman/pages/servis_g%C3%BCzergahlari/service.dart';
import 'package:uzman/widgets/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(Controller());
  int? index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Obx(() => Text("UzmanGrup${controller.showDetails}}")),
          centerTitle: true),
      drawer: NavigationDrawerMenu(),
      body: Row(children: [
        Expanded(child: NavigationDrawerMenu(), flex: 1),
        Obx(
          () => Expanded(
              flex: 5,
              child: controller.pageId == 1
                  ? Employees()
                  : controller.pageId == 2
                      ? Companies()
                      : controller.pageId == 3
                          ? CarServis()
                          : Employees()),
        ),
      ]),
    );
  }
}
