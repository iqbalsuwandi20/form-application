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
            insertUsers();
            // final user = User(
            //   id: 1,
            //   date: 121212,
            //   barcode: 12,
            //   productName: "Cycle",
            //   division: "Staff",
            //   posNo: 12,
            //   transNo: 12,
            //   newTransNo: 15,
            //   contentIssue: "Just test",
            //   cancelItem: false,
            //   exchange: false,
            //   refund: false,
            //   wrongPayment: false,
            //   other: "Just Test Bro!",
            // );
            // await UserSheetsApi.insert([user.toJson()]);
          },
        ),
      ),
    );
  }
  Future insertUsers() async {
    final users =
    [
      User(
          id: 1,
          date: 120312,
          barcode: 12,
          productName: "pen",
          division: "Manager",
          posNo: 12,
          transNo: 12,
          newTransNo: 12,
          contentIssue: "Test User 1",
          cancelItem: true,
          exchange: false,
          refund: false,
          wrongPayment: false,
          other: "nothing"
      ),
      User(
          id: 2,
          date: 120312,
          barcode: 12,
          productName: "pen",
          division: "Manager",
          posNo: 12,
          transNo: 12,
          newTransNo: 12,
          contentIssue: "Test User 1",
          cancelItem: true,
          exchange: false,
          refund: false,
          wrongPayment: false,
          other: "nothing"
      ),
    ];
    final jsonUsers = users.map((user) => user.toJson()).toList();
    await UserSheetsApi.insert(jsonUsers);
  }
}
