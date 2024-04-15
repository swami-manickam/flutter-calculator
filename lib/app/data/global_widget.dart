import 'package:flutter/material.dart';

const yellowColor = Color(0xFFF7CF32);
const bgColor = Color.fromRGBO(40, 150, 220, 1);
const headerColor = Color.fromRGBO(90, 148, 40, 1);
const cardBg = Color.fromRGBO(90, 138, 120, 1);

AppBar appbar(
  BuildContext context,
  String title,
  IconData icon,
  Function() tap,
  Color bgColor,
) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
    ),
    backgroundColor: bgColor,
    actions: [
      IconButton(
        onPressed: tap,
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    ],
  );
}

Widget numberBox({required int number, void Function()? onPressed}) {
  return Container(
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: yellowColor,
    ),
    height: 70,
    width: 70,
    child: TextButton(
      onPressed: onPressed,
      child:
          Text("$number", style: TextStyle(fontSize: 18, color: Colors.white)),
    ),
  );
}

Widget operationBox(
    {required String text,
    void Function()? onPressed,
    void Function()? onLongPress}) {
  return Container(
    /*decoration: BoxDecoration(border: Border.all(color: Colors.grey),*/
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: yellowColor,
    ),
    /*borderRadius: const BorderRadius.all(Radius.circular(8))),*/
    height: 70,
    width: 70,
    child: TextButton(
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: Text(text,
            style: const TextStyle(fontSize: 20, color: Colors.white))),
  );
}
