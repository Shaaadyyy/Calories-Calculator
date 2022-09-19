
import 'dart:math';

import 'package:flutter/material.dart';

import 'calories_result.dart';


class calories_homepage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _homepagestate();

}

class _homepagestate extends State<calories_homepage>
{
  bool isMale = true;
  double height = 150;
  double activitylevel = 1;
  double age = 20;
  double weight = 70;
  //late double cal;
  //late double bmr;

  double roundDouble(double value, int places)
  {
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back)
        ),
        title: Text(
          'Calories Calculator',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
              Icons.search
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      'MALE',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Image(
                                        image:AssetImage(
                                            'images/male.png'
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: isMale ? Colors.grey[700] : Colors.grey[900],
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color: Colors.cyanAccent, width: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child:Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        'FEMALE',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 5.0),
                                      child: Image(
                                          image:AssetImage(
                                              'images/female.png'
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: isMale ? Colors.grey[900] : Colors.grey[700],
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Colors.pinkAccent, width: 1.5),
                              ),
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'HEIGHT',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  height.round().toString() + " cm",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Slider(value: height,
                                  onChanged:(h){
                                    setState(() {
                                      height = h;
                                    });
                                  },
                                  min: 120,
                                  max: 220,
                                  label: height.toString(),
                                  thumbColor: Colors.amberAccent,
                                  activeColor: Colors.amberAccent,
                                  inactiveColor: Colors.amber[100],
                                ),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.amberAccent, width: 1.5),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0, bottom: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    'AGE',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  age.round().toString(),
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Colors.amberAccent,
                                      onPressed: (){
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      heroTag: 'age--',
                                      mini: true,
                                      child: Icon(
                                          Icons.remove
                                      ),
                                    ),
                                    FloatingActionButton(
                                      backgroundColor: Colors.amberAccent,
                                      onPressed: (){
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      heroTag: 'age++',
                                      mini: true,
                                      child: Icon(
                                          Icons.add
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.amberAccent, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child:Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      'WEIGHT',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    weight.round().toString(),
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        backgroundColor: Colors.amberAccent,
                                        onPressed: (){
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                        heroTag: 'weight--',
                                        mini: true,
                                        child: Icon(
                                            Icons.remove
                                        ),
                                      ),
                                      FloatingActionButton(
                                        backgroundColor: Colors.amberAccent,
                                        onPressed: (){
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        heroTag: 'weight++',
                                        mini: true,
                                        child: Icon(
                                            Icons.add
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color: Colors.amberAccent, width: 1.5),
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'ACTIVITY LEVEL',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                activitylevel.round().toString(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Slider(value: activitylevel,
                                onChanged:(al){
                                  setState(() {
                                    activitylevel = al;
                                  });
                                },
                                min: 1,
                                max: 5,
                                label: activitylevel.toString(),
                                thumbColor: Colors.amberAccent,
                                activeColor: Colors.amberAccent,
                                inactiveColor: Colors.amber[100],
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.amberAccent, width: 1.5),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonTheme(
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: FloatingActionButton(
                          onPressed:(){
                            late double cal;
                            late double bmr;
                            if(isMale == true)
                            {
                              bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
                              if(activitylevel == 1) cal = bmr * 1.2;

                              else if (activitylevel.round() == 2) cal = bmr * 1.375;

                              else if (activitylevel.round() == 3) cal = bmr * 1.55;

                              else if (activitylevel.round() == 4) cal = bmr * 1.725;

                              else if (activitylevel.round() == 5) cal = bmr * 1.9;
                            }
                            else
                            {
                              bmr = 447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age);
                              if(activitylevel == 1) cal = bmr * 1.2;

                              else if (activitylevel.round() == 2) cal = bmr * 1.375;

                              else if (activitylevel.round() == 3) cal = bmr * 1.55;

                              else if (activitylevel.round() == 4) cal = bmr * 1.725;

                              else if (activitylevel.round() == 5) cal = bmr * 1.9;
                            };
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=> cal_res(
                                      isMale: isMale,
                                      calories: roundDouble(cal,2),
                                      age: age.round(),
                                      weight: weight.round(),
                                      height: height.round(),
                                      activitylevel: activitylevel.round(),

                                    )
                                )
                            );
                          },
                          child: Text(
                            'CALCULATE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          backgroundColor: Colors.amberAccent,
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}