import 'package:coffee/Coffee/2ndmain.dart';
import 'package:coffee/Coffee/components/logintoptab.dart';
import 'package:flutter/material.dart';

class Login1 extends StatefulWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
             Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Color(0xFF885A3A),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/images/icon.jpg"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Hello Rianda",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_none_sharp,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0,top: 110,bottom: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        height: 100,
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "saldo Anto",
                                      style: TextStyle(
                                        color: Color(0xFF885A3A),
                                      ),
                                    ),
                                    Text(
                                      "Rp 200.000",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // SizedBox(width: 10),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.refresh_sharp,
                                  color: Colors.black,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF885A3A),
                                  minimumSize: Size(70, 30),
                                 ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => opening(),));
                                },
                                child: Text(
                                  "Top Up",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


            TabBar(
              indicatorColor: Color(0xFF885A3A),
              labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xFF885A3A)),
              tabs: [
                Text("Trending"),
                Text("Special"),
                Text("Offers"),
              ],
            ),
             Toopp(),

          ],
        ),
      ),
    );
  }
}
