import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double currentValue = 42;
    return Container(
      height: 900,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: screenSize.height * 0.05,
                color: Colors.deepPurple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Activity",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Show All",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: screenSize.height * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: screenSize.height * 0.1,
                      width: screenSize.width * 0.21,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(70),
                            topRight: Radius.circular(20)),
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 85.0, left: 16.0),
                  child: Container(
                    height: screenSize.height * 0.1,
                    width: screenSize.width * 0.11,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        topRight: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                      color: Colors.yellow,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 175.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: screenSize.height * 0.072,
                      width: screenSize.width * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                        ),
                        color: Colors.cyanAccent,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0, left: 190),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: screenSize.height * 0.047,
                      width: screenSize.width * 0.10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                        ),
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 5.0),
                  child: Container(
                    height: screenSize.height * 0.3,
                    width: screenSize.width * 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: screenSize.height * 0.3,
                      width: screenSize.width * 1,
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbColor: Colors.transparent,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 0.0)),
                        child: Slider(
                          min: 0,
                          max: 100,
                          label: currentValue.toString(),
                          value: currentValue,
                          activeColor: Colors.blue,
                          inactiveColor: Colors.blue.shade100,
                          onChanged: (value) {
                            setState(() {
                              currentValue = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 95.0, left: 290),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Row(
                        children: [
                          Text(currentValue.toString()),
                          Text("%"),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 35),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("images/runingman.png"),
                            fit: BoxFit.fill,
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Runing Daily",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "2500",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                  Text(
                                    "Meters",
                                    style: TextStyle(
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, top: 160),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "4000",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Text("Runing daily reduce fat."),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: screenSize.height * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: screenSize.height * 0.1,
                      width: screenSize.width * 0.21,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(70),
                            topRight: Radius.circular(20)),
                        color: Colors.cyanAccent,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 85.0, left: 16.0),
                  child: Container(
                    height: screenSize.height * 0.1,
                    width: screenSize.width * 0.11,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        topRight: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 175.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: screenSize.height * 0.072,
                      width: screenSize.width * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                        ),
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0, left: 190),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: screenSize.height * 0.047,
                      width: screenSize.width * 0.10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                        ),
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 5.0),
                  child: Container(
                    height: screenSize.height * 0.3,
                    width: screenSize.width * 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: screenSize.height * 0.3,
                      width: screenSize.width * 1,
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbColor: Colors.transparent,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 0.0)),
                        child: Slider(
                          min: 0,
                          max: 100,
                          label: currentValue.toString(),
                          value: currentValue,
                          activeColor: Colors.blue,
                          inactiveColor: Colors.blue.shade100,
                          onChanged: (value) {
                            setState(() {
                              currentValue = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 95.0, left: 290),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Row(
                        children: [
                          Text(currentValue.toString()),
                          Text("%"),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 35),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("images/walk.png"),
                            fit: BoxFit.fill,
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Runing Daily",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "2500",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                  Text(
                                    "Meters",
                                    style: TextStyle(
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, top: 160),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "4000",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Text("Runing daily reduce fat."),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
