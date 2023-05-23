import 'package:flutter/material.dart';
import 'package:form_application/widget/appbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
          title: "Form Application",
          backgroundColor: Color(0xffc71585),
      ),
    );
  }
}
