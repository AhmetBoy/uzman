import 'package:flutter/material.dart';

class EmployeesModal {
  String? image_url;
  String? name;
  String? phone_number;
  String? adres;
  String? servis_noktasi;
  String? gunluk_firma_ismi;
  int? calistigi_gun_sayisi;
  bool? isSelected;
  Icon? iconName;
  EmployeesModal(
      {this.image_url,
      required this.name,
      required this.phone_number,
      this.adres,
      this.servis_noktasi,
      this.gunluk_firma_ismi,
      this.calistigi_gun_sayisi,
      this.isSelected,
      this.iconName});
}
