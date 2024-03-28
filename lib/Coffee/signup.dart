import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDAB49D),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              style: TextStyle(color: Color(0xFF885A3A)),
              cursorColor: Color(0xFF885A3A),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Color(0xFF5E3023)),
                hintText: "Email Address:",
                hintStyle: TextStyle(color: Color(0xFF5E3023),fontWeight: FontWeight.bold,fontSize: 20),
                enabledBorder: UnderlineInputBorder( // Define the underline color when the field is enabled
                  borderSide: BorderSide(color: Color(0xFF5E3023)), // Change the color here
                ),
                focusedBorder: UnderlineInputBorder( // Define the underline color when the field is focused
                  borderSide: BorderSide(color: Color(0xFF5E3023)), // Change the color here
                ),
              ),
            )
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon:  Icon( Icons.lock,color: Color(0xFF5E3023)),
                  hintText: "Password:",
                  hintStyle: TextStyle(color: Color(0xFF5E3023),fontWeight: FontWeight.bold,fontSize: 20),
                enabledBorder: UnderlineInputBorder( // Define the underline color when the field is enabled
                  borderSide: BorderSide(color: Color(0xFF5E3023)), // Change the color here
                ),
                focusedBorder: UnderlineInputBorder( // Define the underline color when the field is focused
                  borderSide: BorderSide(color: Color(0xFF5E3023)), // Change the color here
                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon:  Icon( Icons.lock,color: Color(0xFF5E3023)),
                  hintText: "Confirm Password:",
                  hintStyle: TextStyle(color: Color(0xFF5E3023),fontWeight: FontWeight.bold,fontSize: 20),
                enabledBorder: UnderlineInputBorder( // Define the underline color when the field is enabled
                  borderSide: BorderSide(color: Color(0xFF5E3023),), // Change the color here
                ),
                focusedBorder: UnderlineInputBorder( // Define the underline color when the field is focused
                  borderSide: BorderSide(color: Color(0xFF5E3023)), // Change the color here
                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom( elevation:20 ,shadowColor: Colors.white,backgroundColor:Color(0xFF885A3A),minimumSize: Size(100, 50)),
                onPressed:  () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => (),));

                }, child: Text("Sign Up",style: TextStyle(color: Colors.white),)),
          ),

        ],
      ),
    );
  }
}
