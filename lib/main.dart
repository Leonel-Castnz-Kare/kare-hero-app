import 'package:flutter/material.dart';
import 'package:kare/screens/login.dart';
import 'package:kare/screens/signup.dart';
import 'package:kare/utils/colors.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Home', style: TextStyle(fontSize: 32.0)),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(KareColors.snow),
                            side: MaterialStatePropertyAll(
                              BorderSide(color: KareColors.kareOrange, width: 0.7),
                            ),
                          ),
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ),
                            );
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(KareColors.kareOrange),
                            side: MaterialStatePropertyAll(
                              BorderSide(color: KareColors.snow, width: 0.7),
                            ),
                          ),
                          child: Text('SIGNUP'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
