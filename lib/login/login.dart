import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
                height: 56,
                width: 356,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(237, 237, 237, 1),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const TabBar(
                  padding: EdgeInsets.only(left: 20, top: 6),
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
              const Expanded(
                  child: TabBarView(
                children: [
                  Text(""),
                  Text(""),
                ],
              ))
            ],
          ),
        ));
  }
}
