import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzman/modals/employees_modal.dart';

class Controller extends ChangeNotifier {
  RxInt? pageId = 2.obs;
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
        surName: "BOY",
        phone_number: "0 542 383 3236",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 1 Tuzla",
        calistigi_gun_sayisi: 50,
        yas: 24,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ahmet1",
        surName: "BOY",
        phone_number: "0 542 383 3236",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Darıca",
        gunluk_firma_ismi: "Kuehne Nagel 2 Tuzla",
        calistigi_gun_sayisi: 50,
        yas: 24,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Bayram",
        surName: "Baldede",
        phone_number: "0 542 555 4136",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Aytemiz Petrol",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        yas: 36,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Nazlı",
        surName: "BOY Baldede",
        phone_number: "0 542 248 3736",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Aytemiz Petrol",
        gunluk_firma_ismi: "Kuehne Nagel 3 Tuzla",
        calistigi_gun_sayisi: 50,
        yas: 35,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Cem",
        surName: "Cem",
        phone_number: "0 542 383 1598",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 2 Tuzla",
        calistigi_gun_sayisi: 50,
        yas: 24,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Mücahit",
        surName: "Mücahit",
        phone_number: "0 542 383 3236",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gamze kuruyemiş",
        gunluk_firma_ismi: "Kuehne Nagel 2 Tuzla",
        calistigi_gun_sayisi: 50,
        yas: 24,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Berat",
        surName: "Berat",
        phone_number: "0 542 383 3236",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gebze",
        gunluk_firma_ismi: "Flormar",
        calistigi_gun_sayisi: 50,
        yas: 24,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Ferhat",
        surName: "Ferhat",
        phone_number: "0 542 383 3236",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Gebze",
        gunluk_firma_ismi: "Watsons",
        calistigi_gun_sayisi: 50,
        yas: 20,
        isSelected: true),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Berkay",
        surName: "Berkay",
        phone_number: "0 542 383 3236",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Darıca",
        gunluk_firma_ismi: "DHL",
        calistigi_gun_sayisi: 50,
        yas: 24,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Memet",
        surName: "Memet",
        phone_number: "0 542 383 3236",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Darıca",
        gunluk_firma_ismi: "Flormar",
        calistigi_gun_sayisi: 50,
        yas: 20,
        isSelected: false),
    EmployeesModal(
        image_url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_r7lWOC2mDvP8rQZD2CPgbo9YwrMvCHCtWg&usqp=CAU",
        name: "Memet2",
        surName: "Memet",
        phone_number: "0 542 383 3236",
        adres: "Fevzi çakmak mahallesi Yüksel sokak No:7 D:1",
        servis_noktasi: "Darıca",
        gunluk_firma_ismi: "A-plus",
        calistigi_gun_sayisi: 50,
        yas: 20,
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
