import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_text_view/rich_text_view.dart';
import 'package:uzman/controller.dart';

class RichTextViewEmployeesDetails extends StatelessWidget {
  const RichTextViewEmployeesDetails({
    super.key,
    required this.controller,
    required this.index,
  });

  final Controller controller;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RichTextView(
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          text:
              "Ad: *${controller.employeesInformation[controller.detailId.value].name}*\n"
              "Tel: ${controller.employeesInformation[controller.detailId.value].phone_number}\n"
              "Adres: *${controller.employeesInformation[controller.detailId.value].adres}*\n"
              "Servis Noktası: *${controller.employeesInformation[controller.detailId.value].servis_noktasi}*\n"
              "Firma İsmi: *${controller.employeesInformation[controller.detailId.value].gunluk_firma_ismi}*\n"
              "Çalıştıgı Gün Sayısı: *${controller.employeesInformation[controller.detailId.value].calistigi_gun_sayisi}*\n",
          maxLines: 6,
          truncate: true,
          viewLessText: 'less',
          linkStyle: TextStyle(
              color: Colors.green, fontSize: 18, fontWeight: FontWeight.normal),
          supportedTypes: [
            EmailParser(onTap: (email) => print('${email.value} clicked')),
            PhoneParser(onTap: (phone) => print('click phone ${phone.value}')),
            MentionParser(
                onTap: (mention) => print('${mention.value} clicked')),
            UrlParser(onTap: (url) => print('visting ${url.value}?')),
            BoldParser(),
            HashTagParser(
                onTap: (hashtag) => print('is ${hashtag.value} trending?'))
          ]),
    );
  }
}
