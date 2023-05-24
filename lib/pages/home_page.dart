import 'package:flutter/material.dart';
import 'package:form_application/api/user_sheets_api.dart';
import 'package:form_application/table/user.dart';
import 'package:form_application/widget/appbar_widget.dart';
import 'package:form_application/widget/button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: "Form Application",
        backgroundColor: Color(0xffc71585),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: ButtonWidget(
          text: 'Save',
          onClicked: () async {
            final user = {
              UserFields.id: 1,
              UserFields.date: 23232012,
              UserFields.barcode: 13,
              UserFields.productName: "Car",
              UserFields.division: "Manager",
              UserFields.posNo: 12,
              UserFields.transNo: 15,
              UserFields.newTransNo: 1212,
              UserFields.contentIssue: "Hai",
              UserFields.cancelItem: true,
              UserFields.exchange: false,
              UserFields.refund: false,
              UserFields.wrongPayment: false,
              UserFields.other: false,
            };
            await UserSheetsApi.insert([user]);
          },
        ),
      ),
    );
  }
}
