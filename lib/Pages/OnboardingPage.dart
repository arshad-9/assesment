import 'package:flutter/material.dart';
import 'package:new_assesment/Pages/HomePage.dart';

class Onboardingpage extends StatefulWidget {
  const Onboardingpage({super.key});

  @override
  _OnboardingpageState createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 307,
            height: 727,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assests/Image/logo.png', height: 100, width: 100),
                const SizedBox(height: 20),
                Text(
                  'COINBOOST',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                    fontFamily: 'RobotoMono',
                  ),
                ),

                SizedBox.square(dimension: 50),
                Image.asset(
                  'assests/Image/savings.png',
                  height: 250,
                  width: 250,
                ),

                SizedBox.square(dimension: 50),

                SizedBox(
                  height: 50,
                  width: 307,
                  child: Card(
                    elevation: 6, // Adds shadow to the card
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ), // Rounded corners
                      side: BorderSide(
                        color: const Color.fromARGB(255, 204, 202, 202),
                        width: 2,
                      ), // Card border
                    ),
                    child: Container(
                      width: 260,
                      height: 30,
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none, // Removes underline
                            hintText: "Enter your Mobile Number",
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 160, 158, 158),
                              fontFamily: 'RobotoMono',
                              fontSize: 15,
                            ),
                          ),
                          textAlign:
                              TextAlign.center, // Center text inside TextField
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox.square(dimension: 20),

                SizedBox(
                  height: 50,
                  width: 307,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Homepage(),
                        ),
                      );
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RobotoMono',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
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
