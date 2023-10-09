import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzman/modals/employees_modal.dart';

class Controller extends ChangeNotifier {
  RxInt? pageId = 1.obs;
  RxInt detailId = 0.obs;
  RxInt deleteId = 0.obs;
  RxBool isSelectedListTile = false.obs;
  RxInt selectedIndex = 0.obs;
  RxBool showDetails = true.obs;
  List<EmployeesModal> employeesInformation = [
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ahmet",
        phone_number: "0 505 505 5500",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ahmet2",
        phone_number: "0 505 505 5500",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ahmet3",
        phone_number: "0 505 505 5500",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ahmet4",
        phone_number: "0 505 505 5500",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ahmet5",
        phone_number: "0 505 505 5500",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ahmet6",
        phone_number: "0 505 505 5500",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ahmet7",
        phone_number: "0 505 505 5500",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ahmet8",
        phone_number: "0 505 505 5500",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ahmet9",
        phone_number: "0 505 505 5500",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ahmet10",
        phone_number: "0 505 505 5500",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        isSelected: false),
  ].obs;
  List<String> detailHintText =
      ["name", "phone_number", "adres", "servis_güzergahı", ""].obs;
  List<TextEditingController> textEditingControllerList = [];

  void snackBar(context, bool addOrDelete) {
    if (addOrDelete == false) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(milliseconds: 400),
          content:
              Text("${employeesInformation[detailId.value].name} SİLİNDİ")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(milliseconds: 400),
          content:
              Text("${employeesInformation[detailId.value].name} EKLENDİ")));
    }
  }

  deleteEmployee() {
    employeesInformation.removeAt(detailId.value);
    print(detailId);
    if (detailId == employeesInformation.length) {
      // sonuncu elemanı çıkarttıgımızda detailId yi listenin son elemanına eşitliyoruz yoksa range hatası veriyor.
      if (detailId.value != 0) {
        detailId.value = employeesInformation.length - 1;
        print("detailId $detailId");
      }
    }
  }

  void addEmployee() {
    employeesInformation.add(EmployeesModal(
        name: textEditingControllerList[0].text,
        phone_number: textEditingControllerList[1].text,
        adres: textEditingControllerList[2].text,
        servis_noktasi: textEditingControllerList[3].text));
    detailId.value = employeesInformation.length -
        1; // en son eklenen elemanı detail bölümünde gözüksün diye listenin son elemanına eşitliyoruz.
  }

  void showDetailsChange(i) {
    detailId ==
            i // eger Id ler birbirne eşitse aynı listtile a tıklanmış demektir onun için true ise false, false ise true yapıyoruz.
        ? showDetails.value = !(showDetails.value)
        : showDetails.value = true;
  }
}
