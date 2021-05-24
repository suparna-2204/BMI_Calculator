import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator{
  Calculator({this.height, this.weight});

  final int height;
  final int weight;
  double bmi;

  String calculateBMI(){
    bmi = weight / pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }
  Widget getResult(){
    if(bmi >= 25){
      return Text('Overweight',
      style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w900, color: Colors.red),
      );
    }
    else if(bmi > 18.5){
      return Text('Normal',
        style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w900, color: Colors.green),
      );
    }
    else{
      return Text('Underweight',
        style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w900, color: Colors.yellow),
      );
    }
  }
  String interpretation(){
    if(bmi >= 25){
      return 'You have a higher than normal body weight, try to exercise more!';
    }
    else if(bmi > 18.5){
      return 'You have a normal body weight, good job!';
    }
    else{
      return 'You have a lower than normal body weight, you can eat a bit more!';
    }
  }
}