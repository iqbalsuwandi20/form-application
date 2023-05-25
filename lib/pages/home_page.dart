import 'package:flutter/material.dart';
import 'package:form_application/api/user_sheets_api.dart';
import 'package:form_application/table/user.dart';
import 'package:form_application/widget/appbar_widget.dart';
import 'package:form_application/widget/button_widget.dart';
import 'package:form_application/widget/user_form_widget.dart';

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
        child: UserFormWidget(
          onSavedUser: (user) async {
            await UserSheetsApi.insert([user.toJson()]);
          },
        ),
      ),
    );
  }
  // Future insertUsers() async {
  //   final users =
  //   [
  //     User(
  //         id: 1,
  //         date: "120312",
  //         barcode: "12",
  //         productName: "pen",
  //         division: "Manager",
  //         posNo: "12",
  //         transNo: "12",
  //         newTransNo: "12",
  //         contentIssue: "Test User 1",
  //         cancelItem: true,
  //         exchange: false,
  //         refund: false,
  //         wrongPayment: false,
  //         other: "nothing"
  //     ),
  //     User(
  //         id: 2,
  //         date: "120312",
  //         barcode: "12",
  //         productName: "pen",
  //         division: "Manager",
  //         posNo: "12",
  //         transNo: "12",
  //         newTransNo: "12",
  //         contentIssue: "Test User 1",
  //         cancelItem: true,
  //         exchange: false,
  //         refund: false,
  //         wrongPayment: false,
  //         other: "nothing"
  //     ),
  //   ];
  //   final jsonUsers = users.map((user) => user.toJson()).toList();
  //   await UserSheetsApi.insert(jsonUsers);
  // }
}
