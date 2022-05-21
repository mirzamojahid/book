import 'package:flutter/material.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Container(
        child: Row(
          children: [
            Expanded(
                child: Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(hintText: "Enter Lesson Name"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        //Pdf upload -file pick
                      },
                      child: Text("Submit"))
                ],
              ),
            )),
            Expanded(child: Container(
              child: ListView.builder(itemBuilder: ((context, index) {
                return ListTile(
                  title: Text("Lesson Name"),
                  subtitle: Text("Book Name"),
                );
              })),
            ))
          ],
        ),
      ),
    );
  }
}
