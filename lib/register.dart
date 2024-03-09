import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.17,
                  top: MediaQuery.of(context).size.height * 0.15),
              child: Text(
                'Create an Account',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.35,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 165, 223, 245),
                          filled: true,
                          hintText: 'User_Name',
                          hintStyle: TextStyle(color: Color.fromARGB(255, 13, 13, 13), fontSize: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 165, 223, 245),
                          filled: true,
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Color.fromARGB(255, 13, 13, 13), fontSize: 18),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 165, 223, 245),
                          filled: true,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Color.fromARGB(255, 13, 13, 13), fontSize: 18),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 165, 223, 245),
                          filled: true,
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(color: Color.fromARGB(255, 13, 13, 13), fontSize: 18),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.3),
                      child: Row(
                        children: [
                          Text(
                            'Create',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: const Color.fromARGB(255, 12, 12, 12),
                                fontSize: 25,
                                color: const Color.fromARGB(255, 12, 12, 12)),
                          ),
                        ),
                        // TextButton(
                        //   onPressed: () {},
                        //   child: Text(
                        //     'Forgot Password',
                        //     style: TextStyle(
                        //         decoration: TextDecoration.underline,
                        //         fontSize: 19,
                        //         color: Color.fromARGB(255, 202, 4, 4)),
                        //   ),
                        // )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
