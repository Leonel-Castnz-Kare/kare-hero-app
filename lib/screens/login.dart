import 'package:flutter/material.dart';
import 'package:kare/utils/colors.dart';
import 'package:kare/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: KareColors.kareOrange,
        shadowColor: Colors.white,
        title: const Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          physics: const BouncingScrollPhysics(),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 60,
                      foregroundColor: Colors.transparent,
                      backgroundImage:
                          AssetImage('assets/images/miscellaneous/kare.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: KareColors.orange,
                        width: 2,
                      ),
                    ),
                  ),
                  cursorColor: KareColors.orange,
                ),
                const SizedBox(height: 24.0),
                TextField(
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(_obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                      color: KareColors.darkGray2,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: KareColors.orange,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 6.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: KareColors.kareOrange, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(KareColors.snow),
                          side: MaterialStatePropertyAll(
                            BorderSide(color: KareColors.kareOrange, width: 2),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                              color: KareColors.kareOrange,
                              fontSize: 18,
                              fontFamily: 'BrandonText'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 50,
                      height: 10,
                      child: Divider(
                        color: KareColors.gray2,
                        thickness: 1.2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: Text(
                        'Or Login With',
                        style: TextStyle(
                          color: KareColors.darkGray2,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 30,
                      child: Divider(
                        color: KareColors.gray2,
                        thickness: 1.2,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/facebook.png'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/google.png'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/in.png'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'New user?',
                      style:
                          TextStyle(color: KareColors.darkGray2, fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                            color: KareColors.kareOrange, fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
