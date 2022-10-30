import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            Text('Sign Up',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            // ignore: prefer_const_constructors
            SizedBox(height: 20),
            // ignore: sized_box_for_whitespace
            buttonItem('assets/google1.svg', 'Continue with Google', 25),
            const SizedBox(height: 15),
            buttonItem('assets/phone1.svg', 'Continue with mobile', 30),
            const SizedBox(height: 15),
            const Text(
              'Or',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 15),
            textItem('E-mail...'),
            const SizedBox(height: 15),
            textItem('Password...'),
            const SizedBox(height: 30),
            colorButton(),
            const SizedBox(height: 20),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('if you already have an account  ',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                Text('Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      )),
    );
  }

  Widget colorButton() {
    return Container(
      width: MediaQuery.of(context).size.width - 90,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              // ignore: prefer_const_literals_to_create_immutables
              colors: [
                Color(0xfffd746c),
                Color(0xffff9068),
                Color(0xfffd746c),
              ])),
      child: Center(
        child: const Text('Sign Up',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }

  Widget buttonItem(String imagepath1, String buttonName1, double size1) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: MediaQuery.of(context).size.width - 60,
      height: 60,
      child: Card(
          color: Colors.black,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(width: 1, color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(imagepath1, height: size1, width: size1),
              const SizedBox(width: 15),
              // ignore: prefer_const_constructors
              Text(
                buttonName1,
                style: TextStyle(color: Colors.white, fontSize: 17),
              )
            ],
          )),
    );
  }

  Widget textItem(String labelText1) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      height: 55,
      child: TextFormField(
        decoration: InputDecoration(
            labelText: labelText1,
            labelStyle: TextStyle(fontSize: 17, color: Colors.white),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(width: 1, color: Colors.grey))),
      ),
    );
  }
}
