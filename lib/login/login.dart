import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              width: 140,
              height: 25,
              child: Text(
                'Login Account',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 20 // Fontni belgilash
                    ),
              ),
            ),
            const SizedBox(height: 10), // Matnlar orasidagi masofa
            Container(
              width: 241,
              child: const Text(
                'Hello, welcome back to our account',
                style: TextStyle(
                  color: Color.fromRGBO(89, 89, 89, 1),
                  fontSize: 14, // Fontni belgilash
                ),
              ),
            ),
            const SizedBox(
              height: 65,
            ),
            Container(
              margin: const EdgeInsets.only(right: 36),
              height: 56,
              width: 356,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(237, 237, 237, 1),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: const TabBar(
                padding: EdgeInsets.only(
                  left: 6,
                  top: 6,
                ),
                indicatorPadding: EdgeInsets.symmetric(horizontal: 6),
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                unselectedLabelColor: Color.fromRGBO(79, 79, 79, 1),
                tabs: [
                  Tab(
                    text: 'Phone Number',
                  ),
                  Tab(
                    text: 'Email',
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        prefixIcon: Icon(Icons.phone_outlined),
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFF9B63),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Container(
                      margin: const EdgeInsets.only(right: 36),
                      width: 356,
                      height: 57,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 155, 99, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      //  color: const Color.fromRGBO(255, 155, 99, 1),
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text("Request OTP"),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Row(
                      children: [
                        SizedBox(
                            width: 156,
                            child: Divider(
                              thickness: 1,
                              color: Color.fromRGBO(182, 182, 182, 1),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 13, right: 13),
                          child: Text(
                            "OR",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: Divider(
                            thickness: 1,
                            color: Color.fromRGBO(182, 182, 182, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 35),
                    child: Row(
                      children: [
                        Image.asset("assets/images/google.png"),
                        const SizedBox(width: 80),
                        const Text(
                          'Login with Google',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 36),
                      child: Row(
                        children: [
                          Text(
                            "Not Registered yet?",
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            " Create an Account",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(255, 128, 11, 1)),
                          )
                        ],
                      ))
                ]),
                const Text(""),
              ],
            ))
          ],
        ),
      ),
    )));
  }
}
