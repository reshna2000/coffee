import 'package:coffee/Coffee/Login1.dart';
import 'package:coffee/Coffee/bottomnavbar.dart';
import 'package:coffee/Coffee/components/Trending.dart';
import 'package:coffee/Coffee/signin.dart';
import 'package:coffee/Coffee/logsign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class opening extends StatefulWidget {
  const opening({Key? key});

  @override
  State<opening> createState() => _openingState();
}

class _openingState extends State<opening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    height: 500,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                      ),
                    ),
                    child:Image.asset("assets/images/coffe4.jpg",scale: 10,fit: BoxFit.cover,)
                  ),
                ),Positioned(
                  top: 20,
                  left: 10,
                  child: Container(
                    height:50,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      // borderRadius: BorderRadius.only(
                      //   bottomLeft: Radius.circular(70),
                      // ),
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => bottom(),));

                        }, icon: Icon(Icons.arrow_back_sharp,color: Colors.white,),
                            ),
                        Icon( Icons.notifications,color: Colors.white,),
                      ],
                    )
                  ),
                ),
                Positioned(
                    top: 400,
                    left: 0,
                    child: Container(
                      height: 500,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)// Curves downwards
                        ),
                      ),child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row(
                          //   children: [
                          //     IconButton(onPressed: () {
                          //
                          //     }, icon: Icon(Icons.arrow_back_sharp,color:  Colors.white,))
                          //   ],
                          // )
                          Text("Coffee",style: TextStyle(fontSize: 20)),
                          Text("Rs.200",style: TextStyle(fontSize: 20)),
                          Row(
                            children: [
                              RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  maxRating: 3,
                                  itemCount: 5,
                                  itemSize: 20,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
                                  itemBuilder: (context, index) => Icon(Icons.star,color: Colors.amber),
                                  onRatingUpdate: (rating){
                                    print(rating);
                                  }),
                              Text("4.5 (1.3k Rating)"),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Cappuccino is an espresso-based coffee drink that's made with equal "
                              "parts espresso, steamed milk, and frothed milk. The milk isn't mixed in, "
                              "which gives the espresso a stronger flavor. The cappuccino is rich, "
                              "not acidic, and has a mildly sweet flavor from the milk.",textAlign: TextAlign.center,maxLines: 4) ,
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,top: 50),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF885A3A),
                                   minimumSize: Size(300, 50),shape:  LinearBorder()
                                ),
                                onPressed: () {

                            }, child: Text("Buy",style: TextStyle(color: Colors.white),)),
                          )
                        ],
                        ),
                      ),


                    )

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
