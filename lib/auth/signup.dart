import 'package:final_firebase/utiles/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utiles/color.dart';
import '../views/dasboard.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool loading = false;
  final email = TextEditingController();
  final password = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/logo/arrow.png',
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Row(
                children: [
                  Image.asset('assets/logo/l-1.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'PLANTIFY',
                    style: TextStyle(
                        letterSpacing: 4,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'SignUp',
                style: TextStyle(
                    color: green, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Masukan No. Handphone Anda dan tunggu kode ',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                'autentik dikirimkan',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                      controller: email,
                      decoration: const InputDecoration(
                        hintText: 'Enter Email',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(Icons.lock_open_outlined),
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Password',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: [
                            TextFormField(
                              obscureText: true,
                                controller: password,
                                decoration: const InputDecoration(
                                  hintText: 'Enter Password',
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  prefixIcon: Icon(Icons.lock_open_outlined),
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  loading = true;
                });
                _auth
                    .createUserWithEmailAndPassword(
                        email: email.text, password: password.text)
                    .then((value) {
                        Utils().toastMessage(value.user!.email.toString());
                         Navigator.push(
          context, MaterialPageRoute(builder: ((context) => const Test())));

    
                  setState(() {
                    loading = false;
                  });
                }).onError((error, stackTrace) {
                  Utils().toastMessage(error.toString());
                  setState(() {
                    loading = false;
                  });
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20, top: 30),
                child: Container(
                  width: 363,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: green),
                  height: 48,
                  child: Center(
                      child: loading
                          ? CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 3,
                            )
                          : Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
