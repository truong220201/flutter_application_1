// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import '../fonts/fontTypography.dart';
import '../infomationController/information.dart';
import '../data/dataCity.dart';

class childContainerMini extends StatelessWidget {
  const childContainerMini({
    Key? key,
    required this.cityId,
  });
  // ignore: prefer_typing_uninitialized_variables
  final cityId;
  void changeC(int a) {
    Get.put(VariableN()).updateVariable(
      city: a.obs,
    );
    Get.toNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => changeC(cityId),
        child: Container(
            //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 130,
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.all(10),

              // ignore: sort_child_properties_last
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(children: [
                        Expanded(
                            flex: 5,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                      width: double.infinity,
                                      // ignore: sort_child_properties_last
                                      child: Text(ctlist[cityId].namecity,
                                          style: TextStyle(
                                            fontSize: NORMALSIZE,
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontFamily: 'BasierCircle',
                                          )),
                                      // ignore: prefer_const_constructors
                                      decoration: BoxDecoration(
                                          // border: Border.all(
                                          //     width: 2,
                                          //     color: Color.fromARGB(
                                          //         54, 255, 255, 255)),
                                          )),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                      width: double.infinity,
                                      // ignore: sort_child_properties_last
                                      child: Text('3:12',
                                          style: TextStyle(
                                            fontSize: MINISIZE,
                                            color: const Color.fromARGB(
                                                125, 255, 255, 255),
                                            fontFamily: 'BasierCircle',
                                          )),
                                      // ignore: prefer_const_constructors
                                      decoration: BoxDecoration(
                                          // border: Border.all(
                                          //     width: 2,
                                          //     color: Color.fromARGB(
                                          //         54, 255, 255, 255)),
                                          )),
                                ),
                              ],
                            )),
                        Expanded(
                          flex: 1,
                          child: Container(
                              width: double.infinity,
                              // ignore: sort_child_properties_last
                              child: Text(
                                  // ignore: prefer_interpolation_to_compose_strings
                                  ctlist[cityId].temp.toString() + '°',
                                  style: TextStyle(
                                    fontSize: NORMALSIZE,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontFamily: 'BasierCircle',
                                  )),
                              decoration: const BoxDecoration(
                                  // border: Border.all(
                                  //     width: 2,
                                  //     color: Color.fromARGB(54, 255, 255, 255)),
                                  )),
                        ),
                      ]),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                              width: double.infinity,
                              // ignore: sort_child_properties_last
                              child: Text(ctlist[cityId].weather,
                                  style: TextStyle(
                                    fontSize: MINISIZE,
                                    color: const Color.fromARGB(
                                        125, 255, 255, 255),
                                    fontFamily: 'BasierCircle',
                                  )),
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  // border: Border.all(
                                  //     width: 2,
                                  //     color: Color.fromARGB(54, 255, 255, 255)),
                                  )),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            alignment: Alignment.centerRight,
                            width: double.infinity,
                            child: Text(
                                // ignore: prefer_interpolation_to_compose_strings
                                'Max. ' +
                                    ctlist[cityId].maxtemp.toString() +
                                    ' Min. ' +
                                    ctlist[cityId].mintemp.toString(),
                                style: TextStyle(
                                  fontSize: MINISIZE,
                                  color:
                                      const Color.fromARGB(125, 255, 255, 255),
                                  fontFamily: 'BasierCircle',
                                )),
                            // decoration: BoxDecoration(
                            //   border: Border.all(
                            //       width: 2,
                            //       color: Color.fromARGB(54, 255, 255, 255)),
                            // )
                          ),
                        ),
                      ]),
                    ),
                  ]),
              //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 2, color: Color.fromARGB(54, 255, 255, 255)),
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
                  colors: const <Color>[
                    Color.fromARGB(77, 255, 255, 255),
                    Color.fromARGB(0, 255, 255, 255),
                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.mirror,
                ),
              ),
            )));
  }
}
