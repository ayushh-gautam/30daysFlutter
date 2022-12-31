import 'package:catalog_app/Pages/homePage.dart';
import 'package:catalog_app/Pages/utility/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String namee = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyOwnRoutes.HomePage);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_image.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Welcome $namee',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration:const InputDecoration(
                        hintText: 'Enter your username',
                        labelText: "UserName",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can't be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        namee = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter your password',
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          } else if (value.length < 8) {
                            return "Password can't be less than 8 characters";
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      splashColor: Colors.red,
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: 50,
                        width: changeButton ? 50 : 150,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          shape: changeButton
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                          //
                        ),
                        alignment: Alignment.center,
                        child: changeButton
                            ? const Icon(Icons.done)
                            : const Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// tomorrow continue in day 5