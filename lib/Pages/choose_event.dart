import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChooseEventPage extends StatefulWidget {
  const ChooseEventPage({super.key});

  @override
  State<ChooseEventPage> createState() => _ChooseEventPageState();
}

class _ChooseEventPageState extends State<ChooseEventPage> {
  int selectedService = -1;

  List<String> services = [
    "Music",
    "Food",
    "Vegan",
    "Festival",
    "Other"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 120.0, right: 30, left: 30),
                child: Column(
                  children: [
                    Text("Choose Your Favorite Event", textAlign: TextAlign.center, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
                      child: Text("We will suggest events based on what you like", textAlign: TextAlign.center, style: TextStyle(fontSize: 18,),),
                    ),
                  ],
                ),
              )
            )
          ];
        },
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: services.length,
                  itemBuilder: (BuildContext context, int index) {
                    return serviceContainer("", services[index], index);
                  }
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: MaterialButton(
                  onPressed: () => {},
                  height: 50,
                  minWidth: double.infinity,
                  color: Colors.amber,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("Continue ", style: TextStyle(fontSize: 16),),
                )
              )
            ],
          ),
        ),
      )
    );
  }

  serviceContainer(String image, String name, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (selectedService == index)
            selectedService = -1;
          else
            selectedService = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: selectedService == index ? Colors.amber.shade50 : Colors.grey.shade100,
          border: Border.all(
            color: selectedService == index ? Colors.amber : Colors.blue.withOpacity(0),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: selectedService == index ? Colors.amber.shade800 : Colors.black),)
          ]
        ),
      ),
    );
  }
}