import 'package:flutter/material.dart';
import 'package:yogaui/exercise.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginFormKey = GlobalKey<FormState>();
  bool isChecked = true;
  bool _isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: const Text(
              "Fitness club",
              style: TextStyle(fontSize: 25, fontFamily: "Lobster_Regular"),
            ),
            backgroundColor: const Color.fromARGB(255, 2, 75, 66)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Form(
              key: _loginFormKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 190,
                    width: double.infinity,
                    child: Image(image: AssetImage("assets/y1.png")),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    initialValue: "samantha william",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter username';
                      }
                      return null;
                    },
                    toolbarOptions:
                        const ToolbarOptions(copy: true, paste: true),
                    decoration: InputDecoration(
                        label: const Text("Username"),
                        prefixIcon: const Icon(Icons.person),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'User Name',
                        hintStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    initialValue: "1234",
                    keyboardType: const TextInputType.numberWithOptions(),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter valid Password';
                      }
                      return null;
                    },
                    toolbarOptions:
                        const ToolbarOptions(copy: true, paste: true),
                    decoration: InputDecoration(
                        label: const Text("Password"),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(_isHide
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isHide = !_isHide;
                            });
                          },
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return  const Exercise();
                      }));
                    }),
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 2, 75, 66)),
                      height: 50,
                      width: 250,
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: "Lobster_Regular"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "already have an account?  ",
                        style: TextStyle(
                            fontSize: 20, fontFamily: "Lobster_Regular"),
                      ),
                      Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.black,
                            fontFamily: "Lobster_Regular"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
