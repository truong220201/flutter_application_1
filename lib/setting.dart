// ignore_for_file: unused_import, use_key_in_widget_constructors, unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'fonts/fontTypography.dart';
import 'infomationController/information.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'UIdata/uiData.dart';
import 'childBoxList/childSwitch.dart';

// ignore: camel_case_types
class saveData {}

class UIText extends StatelessWidget {
  @override
  const UIText({Key? key, required this.content});
  // ignore: prefer_typing_uninitialized_variables
  final content;
  @override
  Widget build(BuildContext context) {
    return Text('$content',
        style: TextStyle(
          fontSize: MINISIZE,
          color: const Color.fromARGB(195, 0, 0, 0),
          fontFamily: 'BasierCircle',
        ));
  }
}

initDB() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final int? counter = prefs.getInt('counter');
}

class SettingForm extends StatefulWidget {
  const SettingForm({super.key});
  @override
  State<SettingForm> createState() => _SettingForm();
}

class _SettingForm extends State<SettingForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(25),
          decoration: const BoxDecoration(
            color: Color.fromARGB(120, 160, 160, 160),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(5, 0, 0, 20),
                  child: Text('Weather setting',
                      style: TextStyle(
                        fontSize: NORMALSIZE,
                        color: Color.fromARGB(255, 65, 65, 65),
                        fontFamily: 'BasierCircle',
                      ))),
              Container(
                padding: const EdgeInsets.all(25),
                width: double.infinity,
                // ignore: sort_child_properties_last
                child: Column(children: [
                  const SwitchMinTemp(),
                  const SwitchMax(),
                  const SwitchUV(),
                  const SwitchFelt(),
                  const SwitchP(),
                  const SwitchAir(),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                      child: TextButton(
                        onPressed: () => Get.toNamed('/', arguments: 0),
                        child: const Text('Go Home'),
                      ))
                ]),
                height: 500,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 224, 224, 224),
                  borderRadius: BorderRadius.circular(10),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromARGB(59, 0, 0, 0),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ],
          ))),
    );
  }
}
