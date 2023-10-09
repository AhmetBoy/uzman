import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzman/constants/constants.dart';
import 'package:uzman/controller.dart';
import 'package:uzman/pages/calisanlar/employees_listtile.dart';
import 'package:uzman/widgets/rich_text_view_employees_details.dart';

class Employees extends StatefulWidget {
  static const routName = '/routeEmployeesPage';

  @override
  State<Employees> createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  late TextEditingController controllerTextField;
  final controller = Get.put(Controller());

  // List detailHeaderController = [
  //   controllerTextFieldName,
  //   controllerTextFieldPhone,
  //   controllerTextFieldAdres,
  //   controllerTextFieldFirma,
  //   controllerTextFieldServis
  // ];
  int? index = 0;

  @override
  void initState() {
    for (int i = 0;
        i < controller.detailHintText.length;
        i++) // detailHintText listesinin içinde kaç tane eleman varsa o kadar istenilen veri vardır demek onun için o sayı kadar TextEditingController oluşturuyoruz.
      controller.textEditingControllerList.add(TextEditingController());
    controllerTextField = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controllerTextField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        EmployeesListTile(),
        Expanded(
            flex: 2,
            child: Obx(
              () => Card(
                margin: EdgeInsets.all(5),
                child: controller.showDetails.value != true
                    ? Center(
                        child: Text("Click To More Information",
                            style: TextStyle(fontSize: 20)),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              kNetworkImageProfilPictures,
                              SizedBox(height: 15),
                              RichTextViewEmployeesDetails(
                                  controller: controller,
                                  index: controller.detailId.value)
                            ],
                          ),
                          SizedBox(height: 150),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FilledButton(
                                  onPressed: () {
                                    setState(() {
                                      openDialog();
                                      for (int i = 0;
                                          i < controller.detailHintText.length;
                                          i++) {
                                        controller.textEditingControllerList[i]
                                            .text = "";
                                      } // ikinci kez kişi eklendigi zaman birinci yazılanları sıfırlaması için.
                                    });
                                  },
                                  child: Text("Kişi Ekle",
                                      style: TextStyle(fontSize: 18)),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.green))),
                              FilledButton(
                                  onPressed: () {
                                    setState(() {
                                      controller.snackBar(context, false);
                                      controller.deleteEmployee();
                                    });
                                  },
                                  child: Text("Kişiyi Sil ",
                                      style: TextStyle(fontSize: 18)),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.red))),
                            ],
                          ),
                          SizedBox(height: 40)
                        ],
                      ),
              ),
            ))
      ],
    ));
  }

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text("Your Name"),
            content: SizedBox(
              height: 400,
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.detailHintText.length - 1,
                itemBuilder: (BuildContext context, index) => TextField(
                    controller: controller.textEditingControllerList[index],
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "${controller.detailHintText[index]}")),
              ),
            ),
            actions: [TextButton(onPressed: submit, child: Text("SUBMIT"))],
          ));

  void submit() {
    setState(() {
      controller.addEmployee();
      controller.snackBar(context, true);
    });

    Navigator.of(context).pop();
  }
}
