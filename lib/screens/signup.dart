import 'package:flutter/material.dart';
import 'package:kare/screens/login.dart';
import 'package:kare/utils/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KareColors.snow,
      appBar: AppBar(
        backgroundColor: KareColors.kareOrange,
        shadowColor: Colors.white,
        title: const Text('Sign Up'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        print('Image button tapped');
                        // Agrega la lógica para seleccionar una imagen aquí
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        size: 60.0,
                        color: Colors.grey[700],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'First Name',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: KareColors.orange,
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: KareColors.orange,
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: KareColors.orange,
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Phone (123) 456-7890',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: KareColors.orange,
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              TextField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: KareColors.orange,
                      width: 2,
                    ),
                  ),
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
                ),
              ),
              const SizedBox(height: 8.0),
              TextField(
                obscureText: _obscureConfirmPassword,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: KareColors.orange,
                      width: 2,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureConfirmPassword = !_obscureConfirmPassword;
                      });
                    },
                    icon: Icon(_obscureConfirmPassword
                        ? Icons.visibility_off
                        : Icons.visibility),
                    color: KareColors.darkGray2,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(KareColors.kareOrange),
                        side: MaterialStatePropertyAll(
                          BorderSide(color: KareColors.snow, width: 0.7),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: KareColors.snow,
                            fontSize: 18,
                            fontFamily: 'BrandonText',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
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
              const SizedBox(height: 16.0),
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
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(color: KareColors.darkGray2, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'LOGIN',
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
    );
  }
}
