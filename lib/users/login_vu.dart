import 'package:flutter/material.dart';

import 'user_vu.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    String? email;
    String? password;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.cyan[900],
              centerTitle: true,
              title: const Text('LOGIN'),
            ),
            body: Form(
                key: formkey,
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty || value == '') {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            email = value;
                          },
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Enter Email',
                              hintText: 'Enter Your Email',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          onSaved: (value) {
                            password = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty || value == '') {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Enter Password',
                              hintText: 'Enter Your Password',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              formkey.currentState!.save();
                              formkey.currentState!.validate();
                              if (email == 'sharjeel@gmail.com' &&
                                  password == '1234') {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (c) {
                                  return const UserScreen();
                                }));
                              } else {
                                debugPrint('Invalid credentials');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyan[900], // Background color
                            ),
                            child: const Text('Login',
                                style: TextStyle(fontSize: 15)))
                      ]),
                ))));
  }
}
