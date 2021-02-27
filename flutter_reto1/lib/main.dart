import 'package:flutter/material.dart';

void main() {
  runApp(Reto1());
}

class Reto1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlutterLogo(size: 150.0,),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Phone Number",
                        style: TextStyle(color: Colors.blueGrey, fontSize: 20.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 340,
                    child: Divider(
                      thickness: 2.8,
                      height: 30,
                      color: Colors.black12,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(color: Colors.blueGrey, fontSize: 20.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 340,
                    child: Divider(
                      thickness: 2.8,
                      height: 60,
                      color: Colors.black12,
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.lightBlueAccent,
                    child: ListTile(
                      title: Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Forgot password? No yawa. Tap me",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16.0,color: Colors.black38),),
                  SizedBox(
                    height: 30.0,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5,
                    color: Colors.white54,
                    child: ListTile(
                      title: Center(
                        child: Text(
                          "No acount? Sign up",
                            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16.0,color: Colors.black38)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
