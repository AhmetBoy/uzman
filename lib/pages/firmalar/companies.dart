import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzman/controller.dart';
import 'package:uzman/modals/employees_modal.dart';

class Companies extends StatefulWidget {
  static const routName = '/routeCompaniesPage';

  @override
  State<Companies> createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
  final controller = Get.put(Controller());

  final colums = [
    "First Name",
    "Last Name",
    "Tel",
    "Servis Noktası",
    "Yaş",
    "Firma İsmi"
  ];

  List<EmployeesModal> users = Controller().employeesInformation;

  int? sortColumnIndex;

  bool isAscendig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavigationDrawerMenu(),
      // appBar: AppBar(title: Text("Firmalar${users[0].name}")),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          child: Obx(
            () => DataTable(
              headingTextStyle:
                  TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
              border: TableBorder(horizontalInside: BorderSide()),
              sortAscending: isAscendig,
              sortColumnIndex: sortColumnIndex,
              columns: getColums(colums),
              rows: getRows(controller.employeesInformation),
            ),
          ),
        ),
      ),
    );
  }

  List<DataColumn> getColums(List<String> colums) => colums
      .map((String colum) => DataColumn(
            label: Text(colum),
            onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<EmployeesModal> employeesInformation) =>
      controller.employeesInformation.map((EmployeesModal user) {
        final cells = [
          user.name,
          user.surName,
          user.phone_number,
          user.servis_noktasi,
          user.yas,
          user.gunluk_firma_ismi
        ];

        return DataRow(cells: getCells(cells));
      }).toList();

  getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text("$data"))).toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      controller.employeesInformation.sort(
          (user1, user2) => compareString(ascending, user1.name, user2.name));
    }
    if (columnIndex == 1) {
      controller.employeesInformation.sort((user1, user2) =>
          compareString(ascending, user1.surName, user2.surName));
    }
    if (columnIndex == 2) {
      controller.employeesInformation.sort((user1, user2) =>
          compareString(ascending, user1.phone_number, user2.phone_number));
    }
    if (columnIndex == 3) {
      controller.employeesInformation.sort((user1, user2) =>
          compareString(ascending, user1.servis_noktasi, user2.servis_noktasi));
    }
    if (columnIndex == 4) {
      controller.employeesInformation.sort((user1, user2) =>
          compareString(ascending, "${user1.yas}", "${user2.yas}"));
    }
    if (columnIndex == 5) {
      controller.employeesInformation.sort((user1, user2) => compareString(
          ascending, user1.gunluk_firma_ismi, user2.gunluk_firma_ismi));
    }
    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscendig = ascending;
    });
  }

  compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}
