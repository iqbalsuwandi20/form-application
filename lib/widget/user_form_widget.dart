import 'package:flutter/material.dart';
import 'package:form_application/table/user.dart';
import 'package:form_application/widget/button_widget.dart';

class UserFormWidget extends StatefulWidget {
  final ValueChanged<User> onSavedUser;
  const UserFormWidget({
    Key? key,
    required this.onSavedUser,
  }) : super(key: key);

  @override
  State<UserFormWidget> createState() => _UserFormWidgetState();
}

class _UserFormWidgetState extends State<UserFormWidget> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController controllerDate;
  late TextEditingController controllerBarcode;
  late TextEditingController controllerProductName;
  late TextEditingController controllerDivision;
  late TextEditingController controllerPosNo;
  late TextEditingController controllerTransNo;
  late TextEditingController controllerNewTransNo;
  late TextEditingController controllerContentIssue;
  late bool cancelItem;
  late bool exchange;
  late bool refund;
  late bool wrongPayment;
  late TextEditingController controllerOther;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initUser();
  }

  void initUser() {
    controllerDate = TextEditingController();
    controllerBarcode = TextEditingController();
    controllerProductName = TextEditingController();
    controllerDivision = TextEditingController();
    controllerPosNo = TextEditingController();
    controllerTransNo = TextEditingController();
    controllerNewTransNo = TextEditingController();
    controllerContentIssue = TextEditingController();
    this.cancelItem = true;
    this.exchange = true;
    this.refund = true;
    this.wrongPayment = true;
    controllerOther = TextEditingController();
  }


  @override
  Widget build(BuildContext context) => Form(
    key: formKey,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildDate(),
        const SizedBox(height: 16),
        buildBarcode(),
        const SizedBox(height: 16),
        buildProductName(),
        const SizedBox(height: 16),
        buildDivision(),
        const SizedBox(height: 16),
        buildPosNo(),
        const SizedBox(height: 16),
        buildTransNo(),
        const SizedBox(height: 16),
        buildNewTransNo(),
        const SizedBox(height: 16),
        buildContentIssue(),
        const SizedBox(height: 16),
        buildCancelItem(),
        const SizedBox(height: 16),
        buildExchange(),
        const SizedBox(height: 16),
        buildRefund(),
        const SizedBox(height: 16),
        buildWrongPayment(),
        const SizedBox(height: 16),
        buildOther(),
        const SizedBox(height: 16),
        buildSubmit(),
      ],
    ),
  );

  Widget buildDate() => TextFormField(
    controller: controllerDate,
    cursorColor: const Color(0xffc71585),
    decoration: const InputDecoration(
      labelText: 'Date',
      labelStyle: TextStyle(
        color: Color(0xffc71585),
      ),
      hintText: 'Ex: ddmmyyyy',
      enabledBorder: InputBorder.none,
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffc71585),
        ),
      ),
    ),
    validator: (value) => value != null && value.isEmpty ? 'Enter Date' : null,
  );

  Widget buildBarcode() => TextFormField(
    controller: controllerBarcode,
    cursorColor: const Color(0xffc71585),
    decoration: const InputDecoration(
      labelText: 'Barcode',
      labelStyle: TextStyle(
        color: Color(0xffc71585),
      ),
      hintText: 'Ex: 13',
      enabledBorder: InputBorder.none,
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffc71585),
        ),
      ),
    ),
    validator: (value) =>
    value != null && value.isEmpty ? 'Enter Barcode' : null,
  );

  Widget buildProductName() => TextFormField(
    controller: controllerProductName,
    cursorColor: const Color(0xffc71585),
    decoration: const InputDecoration(
      labelText: 'Product Name',
      labelStyle: TextStyle(
        color: Color(0xffc71585),
      ),
      hintText: 'Ex: Car',
      enabledBorder: InputBorder.none,
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffc71585),
        ),
      ),
    ),
    validator: (value) =>
    value != null && value.isEmpty ? 'Enter Product Name' : null,
  );

  Widget buildDivision() => TextFormField(
    controller: controllerDivision,
    cursorColor: const Color(0xffc71585),
    decoration: const InputDecoration(
      labelText: 'Division',
      labelStyle: TextStyle(
        color: Color(0xffc71585),
      ),
      hintText: 'Ex: Manager',
      enabledBorder: InputBorder.none,
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffc71585),
        ),
      ),
    ),
    validator: (value) =>
    value != null && value.isEmpty ? 'Enter Division' : null,
  );

  Widget buildPosNo() => TextFormField(
    controller: controllerPosNo,
    cursorColor: const Color(0xffc71585),
    decoration: const InputDecoration(
      labelText: 'Pos No',
      labelStyle: TextStyle(
        color: Color(0xffc71585),
      ),
      hintText: 'Ex: 12',
      enabledBorder: InputBorder.none,
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffc71585),
        ),
      ),
    ),
    validator: (value) =>
    value != null && value.isEmpty ? 'Enter Pos No' : null,
  );

  Widget buildTransNo() => TextFormField(
    controller: controllerTransNo,
    cursorColor: const Color(0xffc71585),
    decoration: const InputDecoration(
      labelText: 'Trans No',
      hintText: 'Ex: 12',
      labelStyle: TextStyle(
        color: Color(0xffc71585),
      ),
      enabledBorder: InputBorder.none,
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffc71585),
        ),
      ),
    ),
    validator: (value) =>
    value != null && value.isEmpty ? 'Enter Trans No' : null,
  );

  Widget buildNewTransNo() => TextFormField(
    controller: controllerNewTransNo,
    cursorColor: const Color(0xffc71585),
    decoration: const InputDecoration(
      labelText: 'New Trans No',
      labelStyle: TextStyle(
        color: Color(0xffc71585),
      ),
      hintText: 'Ex: 12',
      enabledBorder: InputBorder.none,
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffc71585),
        ),
      ),
    ),
    validator: (value) =>
    value != null && value.isEmpty ? 'Enter New Trans No' : null,
  );

  Widget buildContentIssue() => TextFormField(
    controller: controllerContentIssue,
    cursorColor: const Color(0xffc71585),
    decoration: const InputDecoration(
      labelStyle: TextStyle(
        color: Color(0xffc71585),
      ),
      labelText: 'Content Issue',
      hintText: 'Ex: This is Car',
      enabledBorder: InputBorder.none,
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffc71585),
        ),
      ),
    ),
    validator: (value) =>
    value != null && value.isEmpty ? 'Enter Content Issue' : null,
  );

  Widget buildCancelItem() => SwitchListTile(
    contentPadding: EdgeInsets.zero,
    activeColor: const Color(0xffc71585),
    controlAffinity: ListTileControlAffinity.leading,
    value: cancelItem,
    title: const Text(
      'Cancel Item',
      style: TextStyle(
        color: Color(0xffc71585),
      ),
    ),
    onChanged: (value) => setState(() => cancelItem = value),
  );

  Widget buildExchange() => SwitchListTile(
    contentPadding: EdgeInsets.zero,
    activeColor: const Color(0xffc71585),
    controlAffinity: ListTileControlAffinity.leading,
    value: exchange,
    title: const Text(
      'Exchange',
      style: TextStyle(
        color: Color(0xffc71585),
      ),
    ),
    onChanged: (value) => setState(() => exchange = value),
  );

  Widget buildRefund() => SwitchListTile(
    contentPadding: EdgeInsets.zero,
    activeColor: const Color(0xffc71585),
    controlAffinity: ListTileControlAffinity.leading,
    value: refund,
    title: const Text(
      'Refund',
      style: TextStyle(
        color: Color(0xffc71585),
      ),
    ),
    onChanged: (value) => setState(() => refund = value),
  );

  Widget buildWrongPayment() => SwitchListTile(
    contentPadding: EdgeInsets.zero,
    activeColor: const Color(0xffc71585),
    controlAffinity: ListTileControlAffinity.leading,
    value: wrongPayment,
    title: const Text(
      'Wrong Payment',
      style: TextStyle(
        color: Color(0xffc71585),
      ),
    ),
    onChanged: (value) => setState(() => wrongPayment = value),
  );

  Widget buildOther() => TextFormField(
    controller: controllerOther,
    cursorColor: const Color(0xffc71585),
    decoration: const InputDecoration(
      labelText: 'Other',
      hintText: 'Ex: This is Car',
      labelStyle: TextStyle(
        color: Color(0xffc71585),
      ),
      enabledBorder: InputBorder.none,
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffc71585),
        ),
      ),
    ),
    // validator: (value) =>
    // value != null && value.isEmpty ? 'Enter Other' : null,
  );

  Widget buildSubmit() => ButtonWidget(
      text: "Save",
      onClicked: () {
        final form = formKey.currentState!;
        final isValid = form.validate();
        if (isValid) {
          final user = User(
              date: controllerDate.text,
              barcode: controllerBarcode.text,
              productName: controllerProductName.text,
              division: controllerDivision.text,
              posNo: controllerPosNo.text,
              transNo: controllerTransNo.text,
              newTransNo: controllerNewTransNo.text,
              contentIssue: controllerContentIssue.text,
              cancelItem: cancelItem,
              exchange: exchange,
              refund: refund,
              wrongPayment: wrongPayment,
              other: controllerOther.text,
          );
          widget.onSavedUser(user);
        }
      },
  );
}
