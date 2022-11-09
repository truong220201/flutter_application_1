// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, duplicate_ignore, file_names

import 'package:flutter/material.dart';
import '../color/getColor.dart';
import '../fonts/fontTypography.dart';
import '../UIdata/uiData.dart';

// ignore: duplicate_ignore, camel_case_types
class childNormalBox extends StatelessWidget {
  @override
  const childNormalBox({
    Key? key,
    required this.title,
    required this.temperature,
    required this.minmax,
    required this.content,
  });
  // ignore: prefer_typing_uninitialized_variables
  final title;
  final temperature;
  final minmax;
  final content;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: 500,
      padding: const EdgeInsets.all(15),
      // ignore: sort_child_properties_last
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('$title',
            style: TextStyle(
              fontSize: MINISIZE,
              color: const Color.fromARGB(117, 255, 255, 255),
              fontFamily: 'BasierCircle',
            )),
        Text('$temperature',
            style: TextStyle(
              fontSize: NORMALSIZE,
              color: const Color(0xFFFFFFFF),
              fontFamily: 'BasierCircle',
            )),
        Text('$minmax',
            style: TextStyle(
              fontSize: NORMALSIZE,
              color: const Color(0xFFFFFFFF),
              fontFamily: 'BasierCircle',
            )),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text('$content',
              style: TextStyle(
                fontSize: SMINISIZE,
                color: const Color(0xFFFFFFFF),
                fontFamily: 'BasierCircle',
              )),
        ),
      ]),
      height: 180.0,
      decoration: BoxDecoration(
        border: Border.all(
            width: 2, color: const Color.fromARGB(54, 255, 255, 255)),
        borderRadius: BorderRadius.circular(20),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          const BoxShadow(
            color: Color.fromARGB(5, 255, 255, 255),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color.fromARGB(77, 255, 255, 255),
            Color.fromARGB(0, 255, 255, 255),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
      ),
    ));
  }
}

// ignore: camel_case_types
class childHalfMiniBox extends StatelessWidget {
  @override
  const childHalfMiniBox({
    Key? key,
    required this.title,
    required this.temperature,
  });
  // ignore: prefer_typing_uninitialized_variables
  final title;
  // ignore: prefer_typing_uninitialized_variables
  final temperature;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: double.infinity,
      // ignore: sort_child_properties_last
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('$title',
                style: TextStyle(
                  fontSize: SMINISIZE,
                  color: const Color.fromARGB(117, 255, 255, 255),
                  fontFamily: 'BasierCircle',
                )),
            Text('$temperature',
                style: TextStyle(
                  fontSize: MINISIZE,
                  color: const Color(0xFFFFFFFF),
                  fontFamily: 'BasierCircle',
                )),
          ]),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2, color: const Color.fromARGB(54, 255, 255, 255)),
        boxShadow: [
          BoxShadow(
            color: BLACKCOLOR,
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color.fromARGB(77, 255, 255, 255),
            Color.fromARGB(0, 255, 255, 255),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
      ),
    ));
  }
}

// ignore: camel_case_types
class childMiniBox extends StatelessWidget {
  const childMiniBox(
      {Key? key,
      required this.title,
      required this.temperature,
      required this.minmax})
      : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final title;
  // ignore: prefer_typing_uninitialized_variables
  final temperature;
  // ignore: prefer_typing_uninitialized_variables
  final minmax;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          padding: const EdgeInsets.all(10),
          // ignore: sort_child_properties_last
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('$title',
                style: TextStyle(
                  fontSize: MINISIZE,
                  color: const Color.fromARGB(117, 255, 255, 255),
                  fontFamily: 'BasierCircle',
                )),
            Text('$temperature',
                style: TextStyle(
                  fontSize: NORMALSIZE,
                  color: const Color(0xFFFFFFFF),
                  fontFamily: 'BasierCircle',
                )),
            Text('$minmax',
                style: TextStyle(
                  fontSize: NORMALSIZE,
                  color: const Color(0xFFFFFFFF),
                  fontFamily: 'BasierCircle',
                )),
          ]),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          height: 120.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                width: 2, color: const Color.fromARGB(54, 255, 255, 255)),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                color: Color.fromARGB(5, 255, 255, 255),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color.fromARGB(77, 255, 255, 255),
                Color.fromARGB(0, 255, 255, 255),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
          ),
        ));
  }
}

// ignore: camel_case_types
class childContainerMini extends StatelessWidget {
  const childContainerMini({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return UIdata().infcA
        ? Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            height: 100,
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.all(10),
              // ignore: sort_child_properties_last
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Air Quality',
                        style: TextStyle(
                          fontSize: SMINISIZE,
                          color: const Color.fromARGB(117, 255, 255, 255),
                          fontFamily: 'BasierCircle',
                        )),
                    Text('Good',
                        style: TextStyle(
                          fontSize: NORMALSIZE,
                          color: const Color(0xFFFFFFFF),
                          fontFamily: 'BasierCircle',
                        )),
                  ]),
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    width: 2, color: const Color.fromARGB(54, 255, 255, 255)),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    color: Color.fromARGB(5, 255, 255, 255),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                // ignore: prefer_const_constructors
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: const Alignment(0.8, 1),
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: <Color>[
                    const Color.fromARGB(77, 255, 255, 255),
                    const Color.fromARGB(0, 255, 255, 255),
                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.mirror,
                ),
              ),
            ))
        : Container();
  }
}
