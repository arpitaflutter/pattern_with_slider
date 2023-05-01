import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  double onChange = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Pattern with Slider"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Slider(
                value: onChange,
                onChanged: (value) {
                  setState(() {
                    onChange = value;
                  });
                },
                label: "${onChange.toInt()}",
                min: 0,
                max: 10,
                inactiveColor: Colors.grey,
                activeColor: Colors.black,
                divisions: 10,
              ),
              Column(
                children: [
                  for (int i = 1; i <= onChange; i++)
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        for (int j = 1; j <= i; j++)
                          Text("$j  ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
