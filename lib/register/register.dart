import "package:flutter/material.dart";

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, top: 80),
                child: Image.asset(
                  'assets/images/frame.png',
                  height: 256,
                  width: 256,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Best Prices & Deals",
              style: TextStyle(
                color: Color.fromRGBO(255, 128, 11, 1),
                fontSize: 25,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Find your favorite Meals at the best prices with exclusive deals only on aliments app.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),

            Container(
              color: const Color.fromRGBO(255, 155, 99, 1),
              width: 400,
              height: 200,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    minWidth: 330,
                    height: 57,
                    color: Colors.white,
                    onPressed: () {},
                    child: const Text("Login"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    minWidth: 330,
                    height: 57,
                    color: Colors.black,
                    onPressed: () {},
                    child: const Text(
                      "Create an account",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
