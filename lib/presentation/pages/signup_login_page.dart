import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:patient_app/constants/my_text_field.dart';
import 'package:patient_app/data/location.dart';

class SignUpLogIn extends StatelessWidget {
  const SignUpLogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailontroller = TextEditingController();
    TextEditingController passwordCOntroller = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                'Welcome ',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTextField(
                  hintText: 'Name',
                  pass: false,
                  controller: nameController,
                ),
                SizedBox(
                  height: 5,
                ),
                MyTextField(
                  hintText: 'email',
                  pass: false,
                  controller: emailontroller,
                ),
                SizedBox(
                  height: 5,
                ),
                MyTextField(
                  hintText: 'password',
                  pass: true,
                  controller: passwordCOntroller,
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: Container(
                    width: 200,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.bodyText2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
