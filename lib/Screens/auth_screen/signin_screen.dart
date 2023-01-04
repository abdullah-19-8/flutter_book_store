import 'package:flutter/material.dart';
import 'package:practical_assignment/Screens/main_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _fomKey = GlobalKey<FormState>();

  bool autoValidate = false;
  bool obscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 1,
            child: Form(
              key: _fomKey,
              autovalidateMode: autoValidate
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      "Sign in",
                      style: TextStyle(fontSize: 30),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      autovalidateMode: autoValidate == true
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Password",
                        suffixIcon: IconButton(
                          onPressed: () => setState(
                            () => obscured = !obscured,
                          ),
                          icon: obscured
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                ),
                        ),
                      ),
                      validator: (value) => value == null || value.isEmpty
                          ? 'Please enter some text'
                          : null,
                      autovalidateMode: autoValidate == true
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      obscureText: obscured,
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () => _fomKey.currentState!.validate()
                          ? Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyHomePage(),
                              ),
                              (route) => false,
                            )
                          : setState(
                              () => autoValidate = true,
                            ),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
