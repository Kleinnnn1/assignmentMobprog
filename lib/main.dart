import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return MaterialApp(home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  final String email = '';
  final String pass = '';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.code),
          title: Text('Assignment'),
          backgroundColor: Colors.green,
        ),
        body: ListView(padding: EdgeInsets.all(20), children: [
          TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'username',
              )),
          TextFormField(
              controller: passController,
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                labelText: 'username',
              )),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                String email = emailController.text;
                String pass = passController.text;

                print('Email: $email, Password: $pass');
              },
              child: Text('submit')),
        ]));
  }
}
