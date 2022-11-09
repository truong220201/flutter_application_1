// ignore_for_file: prefer_typing_uninitialized_variables, duplicate_ignore, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_4/infomationController/information.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'main.dart';
import 'fonts/fontTypography.dart';
import 'data/dataCity.dart';

void dialog() {
  Get.defaultDialog(
    title: "Welcome to Flutter Agency",
    middleText: "We are the best Flutter App Development Company!",
    backgroundColor: Colors.red,
    titleStyle: const TextStyle(color: Colors.white),
    middleTextStyle: const TextStyle(color: Colors.white),
  );
}

var isChecked = [];

// ignore: duplicate_ignore, camel_case_types, duplicate_ignore, must_be_immutable
class ChildContainerMini_Layout extends StatelessWidget {
  ChildContainerMini_Layout({
    super.key,
    required this.cityId,
    required this.namecity,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.weather,
  });
  // ignore: prefer_typing_uninitialized_variables
  final cityId;
  final namecity;
  final temp;
  final maxtemp;
  final mintemp;
  final weather;
  //bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => changeC(cityId),
        child: SizedBox(
            //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 130,
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.all(10),

              // ignore: sort_child_properties_last
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(children: [
                        Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                      width: double.infinity,
                                      // ignore: sort_child_properties_last
                                      child: Text(namecity,
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
                          flex: 2,
                          child: Container(
                              width: double.infinity,
                              // ignore: sort_child_properties_last
                              child: Text(
                                  // ignore: prefer_interpolation_to_compose_strings
                                  temp + '°',
                                  style: TextStyle(
                                    fontSize: NORMALSIZE,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
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
                        CheckBoxForm(Id: cityId),
                        Expanded(
                          flex: 2,
                          child: Container(
                              width: double.infinity,
                              // ignore: sort_child_properties_last
                              child: Text(weather,
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
                                'Max. ' + maxtemp + ' Min. ' + mintemp,
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

void changeC(int a) {
  // Get.put(VariableN()).updateVariable(
  //   city: a.obs,
  // );
  Get.toNamed('/', arguments: a);
}

class CheckBoxForm extends StatefulWidget {
  final int Id;
  const CheckBoxForm({super.key, required this.Id});

  @override
  State<CheckBoxForm> createState() => _CheckBoxForm(cityId: Id);
}

class _CheckBoxForm extends State<CheckBoxForm> {
  _CheckBoxForm({required this.cityId});

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  final int cityId;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked[cityId],
      onChanged: (bool? value) {
        //isChecked[cityId] = value!;
        setState(() {
          isChecked[cityId] = value!;
        });
      },
    );
  }
}

class _ChildContainerMini extends StatelessWidget {
  const _ChildContainerMini({@required this.cityId});
  // ignore: prefer_typing_uninitialized_variables
  final cityId;

//  @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     _ChildContainerMini.dispose();
//     super.dispose();
//   }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Weather>(
      future: getHttp(nameCitya[cityId]),
      builder: ((context, snapshot) {
        String nameCT = '';
        String tempCT = '';
        String maxtempCT = '';
        String mintempCT = '';
        String weatherCT = '';
        if (snapshot.connectionState == ConnectionState.done) {
          // ignore: avoid_print
          print("Connection done.");
          if (snapshot.hasData) {
            //Weather? cityInfo = snapshot.data;
            var a = snapshot.data;
            //print("${a!.name}");

            nameCT = a!.name;
            tempCT = a.temp;
            maxtempCT = a.maxTemp_c;
            mintempCT = a.minTemp_c;
            weatherCT = a.weather;
          } else {
            // ignore: avoid_print
            print("no data ${snapshot.data}");
          }
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text('Loading...'),
                const CircularProgressIndicator()
              ],
            ),
          );
        }
        return ChildContainerMini_Layout(
          cityId: cityId,
          namecity: nameCT,
          temp: tempCT,
          maxtemp: maxtempCT,
          mintemp: mintempCT,
          weather: weatherCT,
        );
      }),
    );
  }
}

void addCb() {
  isChecked.clear();
  for (int i = 0; i < nameCitya.length; i++) {
    isChecked.add(false);
  }
  ;
}

// ignore: must_be_immutable
class CityList extends StatelessWidget {
  // ignore: non_constant_identifier_names

  TextEditingController name_city = TextEditingController();
  void initState() {
    print('initttttttttttttt');
  }

  CityList({super.key});
  // ignore: non_constant_identifier_names
  // final InformationController informationController = Get.put(InformationController());
  // SecondPage({@required this.title});
  // final title;

  @override
  Widget build(BuildContext context) {
    addCb();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 0, 131, 176),
              Color.fromARGB(255, 0, 140, 184),
              Color.fromARGB(255, 0, 180, 219),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
              child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Text('City List',
                      style: TextStyle(
                        fontSize: NORMALSIZE,
                        color: const Color(0xFFFFFFFF),
                        fontFamily: 'BasierCircle',
                      )),
                ),
                for (var i = 0; i < nameCitya.length; i++) ...[
                  _ChildContainerMini(
                    cityId: i,
                  )

                  // ChildContainerMini_Layout(
                  //   cityId: 1,
                  //   namecity: 'nameCT',
                  //   temp: 'tempCT',
                  //   maxtemp: 'maxtempCT',
                  //   mintemp: 'mintempCT',
                  //   weather: 'weatherCT',
                  // )
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () => {
                              for (int i = 0; i < nameCitya.length; i++)
                                {
                                  if (isChecked[i] == true)
                                    {
                                      nameCitya.removeAt(i),
                                    },
                                },
                              Get.toNamed('/city'),
                            },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            // ignore: sort_child_properties_last
                            child: const Icon(
                              Icons.delete,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 55.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(54, 255, 255, 255)),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                const BoxShadow(
                                  color: Color.fromARGB(5, 255, 255, 255),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
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
                          ),
                        )),
                    Container(),
                    TextButton(
                        onPressed: () => Get.defaultDialog(
                            title: "Add City",
                            middleText: "",
                            backgroundColor:
                                const Color.fromARGB(255, 76, 130, 175),
                            titleStyle: const TextStyle(color: Colors.white),
                            middleTextStyle:
                                const TextStyle(color: Colors.white),
                            textConfirm: "Add",
                            textCancel: "Cancel",
                            onConfirm: () => {
                                  checkHttp(name_city.text),
                                  if (trueFalse)
                                    {
                                      nameCitya.add(name_city.text),
                                      // ignore: avoid_print
                                      print(nameCitya),
                                      Get.snackbar(
                                        "Thông báo",
                                        "Thêm thành công.",
                                        icon: const Icon(Icons.person,
                                            color: Colors.white),
                                        snackPosition: SnackPosition.BOTTOM,
                                        backgroundColor: const Color.fromARGB(
                                            255, 122, 167, 219),
                                      ),
                                      Get.toNamed('/city'),
                                    }
                                  else
                                    {
                                      // ignore: avoid_print
                                      print('loi'),
                                      Get.snackbar(
                                        "Thông báo",
                                        "Thêm không thành công.",
                                        icon: const Icon(Icons.person,
                                            color: Colors.white),
                                        snackPosition: SnackPosition.BOTTOM,
                                        backgroundColor: const Color.fromARGB(
                                            255, 122, 167, 219),
                                      )

                                      //Get.toNamed('/city'),
                                    }
                                },
                            cancelTextColor: Colors.white,
                            confirmTextColor: Colors.white,
                            buttonColor:
                                const Color.fromARGB(255, 54, 136, 244),
                            barrierDismissible: false,
                            radius: 20,
                            content: Column(
                              children: [
                                const Text(""),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: TextField(
                                    controller: name_city,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Name city',
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            // ignore: sort_child_properties_last
                            child: const Icon(
                              Icons.add_outlined,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 55.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(54, 255, 255, 255)),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                const BoxShadow(
                                  color: Color.fromARGB(5, 255, 255, 255),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
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
                          ),
                        ))
                  ],
                )
              ],
            ),
          ));
        }),
      ),
    );
  }
}
