import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzman/constants/constants.dart';
import 'package:uzman/controller.dart';

class EmployeesListTile extends StatefulWidget {
  const EmployeesListTile({super.key});

  @override
  State<EmployeesListTile> createState() => _EmployeesListTileState();
}

class _EmployeesListTileState extends State<EmployeesListTile> {
  final controller = Get.put(Controller());
  final ScrollController controllerScroll = ScrollController();
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
  int? index = 0;

  void changeSelectedIcon(i) {
    setState(() {
      controller.employeesInformation[i].isSelected =
          !(controller.employeesInformation[i].isSelected)!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Container(
          child: SingleChildScrollView(
            child: Column(children: [
              ListView.builder(
                padding: EdgeInsets.all(5),
                controller: controllerScroll,
                shrinkWrap: true,
                itemCount: controller.employeesInformation.length,
                itemBuilder: (BuildContext context, index) =>
                    buildListTile(index),
              ),
              Container(
                color: Colors.white,
                height: 30,
              )
            ]),
          ),
        ));
  }

  Card buildListTile(int index) {
    return Card(
      elevation: index == controller.selectedIndex ? 10 : 5,
      child: ListTile(
        selected: index == controller.selectedIndex,
        selectedColor: Colors.blue,
        selectedTileColor: Colors.black12,
        onTap: () {
          setState(() {
            controller.showDetailsChange(index);
            controller.deleteId.value = index;
            controller.selectedIndex.value = index;
            controller.detailId.value = index;
          });
        },
        leading: kNetworkImageProfilPictures,
        trailing: index == controller.selectedIndex
            ? Icon(Icons.check_circle, color: Colors.green)
            : null,
        title: Text(controller.employeesInformation[index].name.toString()),
        subtitle: Text(
            controller.employeesInformation[index].phone_number.toString()),
      ),
    );
  }
}
