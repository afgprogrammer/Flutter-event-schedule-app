import 'package:event_schedule/Pages/choose_event.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500,
            padding: EdgeInsets.only(top: 100, right: 40, left: 40, bottom: 50),
            decoration: BoxDecoration(
              color: Colors.red.shade100
            ),
            width: double.infinity,
            child: Lottie.asset("assets/88146-event-venue.json"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text("Schedule an event?", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                Shimmer.fromColors(
                  baseColor: Colors.black,
                  highlightColor: Colors.red,
                  child: Text(
                    'Schedule an event?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Shimmer.fromColors(
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3)
                        ),
                        padding: EdgeInsets.all(8),
                      ),
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade300,
                    ),
                    SizedBox(width: 10,),
                    Shimmer.fromColors(
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3)
                        ),
                        padding: EdgeInsets.all(8),
                      ),
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade300,
                    )
                  ]
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Shimmer.fromColors(
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3)
                        ),
                        padding: EdgeInsets.all(8),
                      ),
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade300,
                    ),
                    SizedBox(width: 10,),
                    Shimmer.fromColors(
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3)
                        ),
                        padding: EdgeInsets.all(8),
                      ),
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade300,
                    )
                  ]
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Shimmer.fromColors(
                      child: Container(
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3)
                        ),
                        padding: EdgeInsets.all(8),
                      ),
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade300,
                    ),
                    SizedBox(width: 10,),
                    Shimmer.fromColors(
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3)
                        ),
                        padding: EdgeInsets.all(8),
                      ),
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade300,
                    ),
                    SizedBox(width: 10,),
                    Shimmer.fromColors(
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3)
                        ),
                        padding: EdgeInsets.all(8),
                      ),
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade300,
                    )
                  ]
                ),

                SizedBox(height: 30,),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChooseEventPage()))
                      },
                      height: 50,
                      elevation: 0,
                      highlightElevation: 0,
                      minWidth: double.infinity,
                      color: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w600),),
                    ),
                    SizedBox(height: 12,),
                    MaterialButton(
                      onPressed: () => {},
                      height: 50,
                      elevation: 0,
                      highlightElevation: 0,
                      minWidth: double.infinity,
                      color: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Text("Tomorrow", style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w600),),
                    ),
                    SizedBox(height: 12,),
                    MaterialButton(
                      onPressed: () => {},
                      height: 50,
                      elevation: 0,
                      highlightElevation: 0,
                      minWidth: double.infinity,
                      color: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Text("Next week", style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w600),),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
