import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return MaterialApp(
      home: FirstPage()
    );
  }
}

class FirstPage extends StatelessWidget {

  String email= '';
  String pass = '';

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.code),
        title: Text('Assignment'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextFormField(
            
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'username',
            )

          ),
          TextFormField(
            controller: passController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'username',
            )

          ),
          
          ElevatedButton(onPressed: () {
          
            print('Email: $email, Password: $pass');
          },
          child: Text('submit')),
          

        ]

      )

    );
  }


}