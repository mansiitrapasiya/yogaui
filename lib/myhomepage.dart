import 'package:flutter/material.dart';
import 'package:yogaui/loginpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Stack(
              children: [Image.asset("assets/y.png")],
            ),
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 120, top: 50),
                child: Text(
                  "Yoga relaxes you,\nto help you sleep better",
                  style: TextStyle(fontSize: 26, fontFamily: "Lobster_Regular"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 50),
                child: Text(
                  "There are good ones to learns as you\n build a regular yoga practise",
                  style: TextStyle(fontSize: 22, fontFamily: "Lobster_Regular"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 90,
          ),
          Container(
            height: 40,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color.fromARGB(255, 2, 75, 66)),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                child: const Text(
                  "Log in now",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontFamily: "Lobster_Regular"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
