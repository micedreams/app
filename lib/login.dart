import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  static const routeName = '/Login';
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String _email;
  late String _password;
  bool signin = true;
  bool _passwordVisible = true;

  final formKey = GlobalKey<FormState>();

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void validateAndSubmit() async {
    Navigator.of(context).pushNamed(Home.routeName);
  }

  @override
  Widget build(context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  signin ? "Login" : "Signup",
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1a1a1a),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(color: Color(0xFF828282)),
                        focusColor: Color(0xff283593),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Color(0xffE0E0E0),
                            width: 1.5,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Color(0xffE0E0E0),
                            width: 1.5,
                          ),
                        ),
                        hintText: "Email",
                        filled: false,
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        counterText: "",
                      ),
                      validator: (value) =>
                          value!.isEmpty ? "Email cant be empty" : null,
                      onSaved: (value) => _email = value!,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(color: Color(0xFF828282)),
                        focusColor: const Color(0xff283593),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: const BorderSide(
                            color: Color(0xffE0E0E0),
                            width: 1.5,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Color(0xff283593),
                            width: 1.5,
                          ),
                        ),
                        hintText: "PassWord",
                        filled: false,
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        counterText: "",
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xff283593),
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                      validator: (value) =>
                          value!.isEmpty ? "Password cant be empty" : null,
                      onSaved: (value) => _password = value!,
                      obscureText: _passwordVisible ? true : false,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Home.routeName);
                      },
                      child: Ink(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff283593),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.all(16.0),
                        child: const Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: "Roboto",
                            letterSpacing: 0.005,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Text("Forgot your password?",
                          style: TextStyle(
                              color: Color(0xff283593),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold)))
                ],
              ),
            ],
          )),
    );
  }
}
