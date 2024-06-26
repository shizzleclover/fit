import 'package:fitapp/Widgets2/appbar.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import "package:fitapp/Widgets2/button.dart";
import 'package:fitapp/Pages/workpage.dart';
import 'package:fitapp/Pages/playingpage.dart';

 

class Activityscreen extends StatelessWidget {
  const Activityscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Acivity",
        leftIconPath: "assets3/Images/Close.svg",
        onLeftIconTap: () {
          Navigator.pop(context);
        },
        rightIconPath: "assets3/Images/Navigation.svg",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets3/Images/Map.png",
                  fit: BoxFit.cover,
                  height: 400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 265,
                width: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Ottawa, Canada",
                        style: TextStyle(
                            fontFamily: "DMSans",
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000)),
                        // Ensure the text is centered
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      const Text(
                        "12,456",
                        style: TextStyle(
                            fontFamily: "DMSans",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000)),
                        // Ensure the text is centered
                      ),
                      const Text(
                        "Activity Today",
                        style: TextStyle(
                            fontFamily: "DMSans",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 143, 142, 142)),
                        // Ensure the text is centered
                      ),
                      OverlappingImages(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppButton(
                            text: "Join",
                            textColor: Colors.white,
                            backgroundColor: Color.fromRGBO(255, 112, 134, 1),
                            width: 150,
                            height: 50,
                            radius: 10,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WorkScreen()));
                            },  
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OverlappingImages extends StatelessWidget {
  OverlappingImages({super.key});
  final List<String> imagePaths = [
    "assets3/Images/More.png",
    "assets3/Images/black.png",
    "assets3/Images/blue.png",
    "assets3/Images/white.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90, // Set a fixed height for the overlapping images
      width: 130, // Set a fixed width to ensure finite size for the Stack
      child: Stack(
        children: imagePaths.asMap().entries.map((entry) {
          int idx = entry.key;
          String imagePath = entry.value;
          return Positioned(
            right: idx * 20,
            child: Image.asset(imagePath, width: 100),
          );
        }).toList(),
      ),
    );
  }
}
