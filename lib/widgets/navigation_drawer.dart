import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzman/controller.dart';

class NavigationDrawerMenu extends StatefulWidget {
  @override
  State<NavigationDrawerMenu> createState() => _NavigationDrawerMenuState();
}

class _NavigationDrawerMenuState extends State<NavigationDrawerMenu> {
  final controller = Get.put(Controller());

  int denemeId = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [buildHeader(context), buildMenuItems(context)],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
      child: InkWell(
        onTap: () => print("object"),
        child: Column(children: [
          CircleAvatar(
            radius: 52,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU"),
          ),
          SizedBox(height: 12),
          Text("UzmanGrup İK",
              style: TextStyle(fontSize: 28, color: Colors.white)),
          Text(
            "uzmangrup@gmail.com",
            style: TextStyle(fontSize: 16, color: Colors.white),
          )
        ]),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Container(
      child: Wrap(runSpacing: 10, children: [
        buildListTile(context, Icon(Icons.people_alt), "Çalışanlar", 1, 0),
        buildListTile(context, Icon(Icons.factory), "Firmalar", 2, 1),
        buildListTile(context, Icon(Icons.car_repair_rounded),
            "Servis Güzergahları", 3, 2),
      ]),
    );
  }

  InkWell buildListTile(
      BuildContext context, Icon icon, String text, int id, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          denemeId = index;
        });
        if (id == 1) {
          controller.pageId!.value = id;
          // Navigator.pushNamed(
          //   context,
          //   Employees.routName,
          // );
        }
        if (id == 2) {
          controller.pageId!.value = id;
          // Navigator.pushNamed(
          //   context,
          //   Companies.routName,
          // );
        }
        if (id == 3) {
          controller.pageId!.value = id;
          // Navigator.pushNamed(
          //   context,
          //   CarServis.routName,
          // );
        }
      },
      child: ListTile(
        selected: index == denemeId,
        selectedColor: Colors.blue,
        selectedTileColor: Colors.black12,
        leading: icon,
        title: Text(text, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
