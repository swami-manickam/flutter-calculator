import 'package:flutter/material.dart';

const yellowColor = Color(0xFFF7CF32);

Widget numberBox({required int number, void Function()? onPressed}) {
  return Container(

    /*
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(border: Border.all(color: Colors.grey)*/
    decoration: BoxDecoration(
      /*borderRadius: BorderRadius.circular(5.0),*/
      shape: BoxShape.circle,
      color: yellowColor,
    ) /*,borderRadius: const BorderRadius.all(Radius.circular(8)))*/,
    height: 70,
    width: 70,
    child: TextButton(onPressed: onPressed,
      child: Text("$number", style:
      TextStyle(fontSize: 18, color: Colors.white)),
    ),
  );
}

Widget operationBox(
    {required String text, void Function()? onPressed, void Function()? onLongPress}) {
  return Container(
    /*decoration: BoxDecoration(border: Border.all(color: Colors.grey),*/
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: yellowColor,
    ),
    /*borderRadius: const BorderRadius.all(Radius.circular(8))),*/
    height: 70,
    width: 70,
    child: TextButton
      (
        onPressed: onPressed, onLongPress: onLongPress,
        child: Text(text, style:
        TextStyle(fontSize: 20, color: Colors.white))
    ),
  );
}