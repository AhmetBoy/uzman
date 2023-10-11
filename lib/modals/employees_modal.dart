import 'package:flutter/material.dart';

class EmployeesModal {
  String? image_url;
  String name;
  String surName;
  String phone_number;
  String? adres;
  String servis_noktasi;
  String gunluk_firma_ismi;
  int? calistigi_gun_sayisi;
  int? yas;
  bool? isSelected;
  Icon? iconName;
  EmployeesModal(
      {this.image_url,
      this.name = "default",
      this.surName = "default",
      this.phone_number = "default",
      this.adres,
      this.servis_noktasi = "default",
      this.gunluk_firma_ismi = "default",
      this.calistigi_gun_sayisi,
      this.yas,
      this.isSelected,
      this.iconName});
}
