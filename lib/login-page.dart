import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _secretsPin = true;

  void _passwordVisibility(){
    setState(() {
      _secretsPin =! _secretsPin;
    });
  }

  void _login() async {
      String username = _username.text;
      print('Username: $username');
      String password = _password.text;
      print('Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
          child: Stack(
            children: [
              // Add your background image here
              Center(
                child: Container(
                  width: 280,
                  height: 400,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(width: 2, color: Colors.black)
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
                      child: Column(
                        children: [
                          Text("Student's Login",
                            style: GoogleFonts.josefinSans(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0XFFe4c441)),
                          ),
                          const SizedBox(height: 10),
                          Text('Hey, Enter your username and password to get sign in to your account',
                            style: GoogleFonts.josefinSans(fontSize: 11),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0, left: 8.0),
                                child: Text('Username',
                                  style: GoogleFonts.josefinSans(fontSize: 11, fontWeight: FontWeight.w800),
                                ),
                              ),
                              SizedBox(
                                width: 250,
                                height: 50,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 9),
                                    child: TextField(
                                      controller: _username,
                                      style: GoogleFonts.josefinSans(fontSize: 11),
                                      decoration: InputDecoration(
                                          hintText: 'input username',
                                          hintStyle: GoogleFonts.josefinSans(fontSize: 10, color: Colors.grey),
                                          contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                                          border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                            borderSide: BorderSide(color: Color(0XFFffde59)),
                                          ),
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                          borderSide: BorderSide(color: Color(0XFFffde59)),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                          borderSide: BorderSide(color: Color(0XFFffde59)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0, left: 8.0, top: 8.0),
                                child: Text('Password',
                                  style: GoogleFonts.josefinSans(fontSize: 11, fontWeight: FontWeight.w800),
                                ),
                              ),
                              SizedBox(
                                width: 250,
                                height: 50,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 9),
                                    child: TextField(
                                      controller: _password,
                                      style: GoogleFonts.josefinSans(fontSize: 11),
                                      obscureText: _secretsPin,
                                      decoration: InputDecoration(
                                        hintText: 'input password',
                                        hintStyle: GoogleFonts.josefinSans(fontSize: 10, color: Colors.grey),
                                        suffixIcon: IconButton(
                                          icon:   Icon(
                                            _secretsPin ? Icons.visibility : Icons.visibility_off,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          onPressed: _passwordVisibility,
                                        ),
                                        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                                        border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                          borderSide: BorderSide(color: Color(0XFFffde59)),
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                          borderSide: BorderSide(color: Color(0XFFffde59)),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                          borderSide: BorderSide(color: Color(0XFFffde59)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Forgot Password ?',
                                style: GoogleFonts.josefinSans(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0XFFEB5757)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            width: 250,
                            height: 30,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(const Color(0XFFe9da9d)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      )
                                  )
                              ),
                              onPressed: _login,
                              child: Text('Sign in',
                                style: GoogleFonts.josefinSans(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.horizontal_rule, size: 12, color: Colors.black,),
                              Text('Or Sign in with',
                                style: GoogleFonts.josefinSans(fontSize: 11),
                              ),
                              const Icon(Icons.horizontal_rule, size: 12, color: Colors.black,)
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 120,
                                height: 30,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            side: BorderSide(width: 1, color: Color(0XFFffde59)), // add border
                                          )
                                      )
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.email, size: 15, color: Colors.black,),
                                      const SizedBox(width: 5),
                                      Text('Email',
                                        style: GoogleFonts.josefinSans(fontSize: 11, color: Colors.black),
                                      ),
                                    ],
                                  )
                                ),
                              ),
                              const SizedBox(width: 10),
                              SizedBox(
                                width: 120,
                                height: 30,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            side: BorderSide(width: 1, color: Color(0XFFffde59)),
                                          )
                                      )
                                  ),
                                  onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.facebook, size: 15, color: Colors.black,),
                                        const SizedBox(width: 5),
                                        Text('Facebook',
                                          style: GoogleFonts.josefinSans(fontSize: 11, color: Colors.black),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
