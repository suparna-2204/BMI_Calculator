import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.text, this.icon});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 80.0,color: Colors.black54,),
        SizedBox(
          height: 15.0,
        ),
        Text(text,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
