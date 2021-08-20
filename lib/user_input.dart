import 'package:flutter/material.dart';
import 'package:hng_task_two/welcome_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  final nameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.jpeg",
              height: 70,
            ),
            Text(
              "Enter your name to gain access",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: nameController,
            ),
            SizedBox(
              height: 5,
            ),
            RaisedButton(
              onPressed: () {
                String nameEntered = nameController.text;
                print("Welcome $nameEntered");
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => WelcomeScreen(
                      guestName: nameEntered,
                    ),
                  ),
                );
              },
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
