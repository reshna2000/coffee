import 'package:coffee/Coffee/2ndmain.dart';
import 'package:flutter/material.dart';

class trending extends StatefulWidget {
  const trending({Key? key}) : super(key: key);

  @override
  State<trending> createState() => _trendingState();
}

class _trendingState extends State<trending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade400,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Container(
                height: 220,
                width: 500,
                color: Colors.transparent,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10,);
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              boxShadow:[BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/coffe3.jpg"),alignment: Alignment.topCenter)
                          ),
                          height: 190,
                          width: 130,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Coffee", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star,color: Colors.amber, size: 10,),
                                    Text("1.3k Rating", style: TextStyle(fontSize: 10),),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), // Modified this line
                                          minimumSize: Size(140, 40),
                                          backgroundColor: Color(0xFFD6C7BD)
                                      ),
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => opening(),));

                                      }, child: Text("Details",style: TextStyle(color: Colors.white),)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right: 208.0),
                child: Text("Other variety",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                    tileColor: Colors.white,
                      leading: Image.asset("assets/images/coffe3.jpg"),
                      title: Text(' Coffee',style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('   cold'),
                      trailing: Icon(Icons.add_box,color:Color(0xFFDAB49D) ),
                      onTap: () {
                      },
                    ),
                    SizedBox(height: 10,),
                    ListTile(
                    tileColor: Colors.white,
                      leading: Image.asset("assets/images/coffee5.jpg"),
                      title: Text(' Coffee',style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('   cold'),
                      trailing: Icon(Icons.add_box,color:Color(0xFFDAB49D) ),
                      onTap: () {
                      },
                    ),
                    SizedBox(height: 10,),

                    ListTile(
                    tileColor: Colors.white,
                      leading: Image.asset("assets/images/coffee5.jpg"),
                      title: Text(' Coffee',style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('   cold'),
                      trailing: Icon(Icons.add_box,color:Color(0xFFDAB49D) ),
                      onTap: () {
                      },
                    ),
                    SizedBox(height: 10,),

                    ListTile(
                    tileColor: Colors.white,
                      leading: Image.asset("assets/images/coffe3.jpg"),
                      title: Text(' Coffee',style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('   cold'),
                      trailing: Icon(Icons.add_box,color:Color(0xFFDAB49D) ),
                      onTap: () {
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
