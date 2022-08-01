import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:users_app/mainScreens/main_screen.dart';

class AboutScreen extends StatefulWidget {
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          //image
          Container(
            height: 230,
            child: Center(
              child: Image.asset(
                "images/car_logo.png",
                width: 260,
              ),
            ),
          ),

          Column(
            children: [
              //company name
              const Text(
                "Hitch A Ride",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                "This application has been developed as a part of the project requirements of SCMS school of Engineering and Technology by Anila CS, Anjana Sanjay, Gesmi P Raj, Hance Steve ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white54,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              const Text(
                "We thank all the facuilty members and other staffs who helped us to successfully create and deploy the application",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white54,
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              //close
              ElevatedButton(
                onPressed: () {
                  //SystemNavigator.pop();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => MainScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white54,
                ),
                child: const Text(
                  "Close",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
