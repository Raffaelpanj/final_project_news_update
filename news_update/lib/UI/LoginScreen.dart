import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:news_update/UI/BottomNavBar.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  loginSubmit() async {
    try {
      _firebaseAuth
          .signInWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .then((value) => Get.off(BtmNavBar(),
                  arguments: _emailController.text.toString())
              // Navigator.of(context).pushReplacement(
              //     MaterialPageRoute(builder: (context) => const HomeScreen()))
              );
    } catch (e) {
      print(e);
      SnackBar(content: Text("Anda tidak memiliki akun, silahkan daftar"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 140),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text.rich(TextSpan(
                    text: "News",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff13294b),
                        fontSize: 45))),
                Text.rich(TextSpan(
                    text: " Update",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xffff7f41),
                        fontSize: 45)))
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Image.asset("assets/images/earth.png")],
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Email",
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Password",
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                    onPressed: () {},
                    child: const Text.rich(TextSpan(
                        text: "Forgot Password",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xffff7f41)))))
              ],
            ),
            const SizedBox(height: 17),
            SizedBox(
              width: double.infinity,
              height: 40.0,
              child: ElevatedButton(
                  onPressed: () {
                    loginSubmit();
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff13294b))),
                  child: const Text.rich(TextSpan(
                    text: "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22),
                  ))),
            ),
            const SizedBox(height: 19),
            SizedBox(
              width: double.infinity,
              height: 40.0,
              child: ElevatedButton(
                  onPressed: () async {
                    try {
                      await _firebaseAuth.createUserWithEmailAndPassword(
                          email: _emailController.text.toString().trim(),
                          password: _passwordController.text);
                    } catch (e) {
                      final snackBSU = SnackBar(
                          content:
                              Text("Akun sudah terdaftar, silahkan login"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBSU);
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff13294b))),
                  child: const Text.rich(TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
