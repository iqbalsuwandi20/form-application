import 'package:flutter/material.dart';
import 'package:form_application/api/user_sheets_api.dart';
import 'package:form_application/table/user.dart';
import 'package:form_application/widget/appbar_widget.dart';
import 'package:form_application/widget/navigate_users_widget.dart';
import 'package:form_application/widget/user_form_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> users = [];
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsers();
  }

  Future getUsers() async {
    final users = await UserSheetsApi.getAll();

    setState(() {
      this.users = users;
    });
  }

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserFormWidget(
                user: users.isEmpty ? null : users[index],
                onSavedUser: (user) async {
                  final id = await UserSheetsApi.getRowCount() + 1;
                  final newUser = user.copy(id: id);
                  await UserSheetsApi.insert([newUser.toJson()]);
                },
              ),
              const SizedBox(
                height: 16,
              ),
              if (users.isNotEmpty) buildUserControls(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildUserControls() => NavigateUsersWidget(
    text: '${index + 1}/${users.length} Users',
    onClickedNext: () {
      final nextIndex = index >= users.length - 1 ? 0 : index + 1;
      setState(() => index = nextIndex);
    },
    onClickedPrevious: () {
      final previousIndex = index <= 0 ? users.length - 1 : index - 1;
      setState(() => index = previousIndex);
    },
  );
}
