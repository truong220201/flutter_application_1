// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import '../fonts/fontTypography.dart';
import '../infomationController/information.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../UIdata/uiData.dart';
import '../setting.dart';

class SwitchMinTemp extends StatefulWidget {
  const SwitchMinTemp({super.key});
  @override
  State<SwitchMinTemp> createState() => _SwitchMinTemp();
}

class _SwitchMinTemp extends State<SwitchMinTemp> {
  bool lightMin = STdata().infcMin;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const UIText(content: 'Min. Temp.'),
        Switch(
          // This bool value toggles the switch.
          value: lightMin,
          activeColor: const Color.fromARGB(255, 90, 175, 255),
          onChanged: (bool value) {
            Get.put(InformationController()).updateInformation(
                minTemp: value.obs,
                maxTemp: STdata().infcMax.obs,
                uvIndicator: STdata().infcUV.obs,
                feltTemp: STdata().infcF.obs,
                pressure: STdata().infcP.obs,
                airQuality: STdata().infcA.obs);
            setState(() {
              lightMin = value;
            });
          },
        )
      ],
    );
  }
}

class SwitchUV extends StatefulWidget {
  const SwitchUV({super.key});
  @override
  State<SwitchUV> createState() => _SwitchUV();
}

class _SwitchUV extends State<SwitchUV> {
  bool lightUV = STdata().infcUV;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const UIText(content: 'UV Indicator'),
        Switch(
          // This bool value toggles the switch.
          value: lightUV,
          activeColor: const Color.fromARGB(255, 90, 175, 255),
          onChanged: (bool value) {
            Get.put(InformationController()).updateInformation(
                minTemp: STdata().infcMin.obs,
                maxTemp: STdata().infcMax.obs,
                uvIndicator: value.obs,
                feltTemp: STdata().infcF.obs,
                pressure: STdata().infcP.obs,
                airQuality: STdata().infcA.obs);
            // This is called when the user toggles the switch.
            setState(() {
              lightUV = value;
            });
          },
        )
      ],
    );
  }
}

class SwitchMax extends StatefulWidget {
  const SwitchMax({super.key});
  @override
  State<SwitchMax> createState() => _SwitchMax();
}

class _SwitchMax extends State<SwitchMax> {
  bool lightMax = UIdata().infcMax;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const UIText(content: 'Max. Temp.'),
        Switch(
          // This bool value toggles the switch.
          value: lightMax,
          activeColor: const Color.fromARGB(255, 90, 175, 255),
          onChanged: (bool value) {
            Get.put(InformationController()).updateInformation(
                minTemp: STdata().infcMin.obs,
                maxTemp: value.obs,
                uvIndicator: STdata().infcUV.obs,
                feltTemp: STdata().infcF.obs,
                pressure: STdata().infcP.obs,
                airQuality: STdata().infcA.obs);
            // This is called when the user toggles the switch.
            setState(() {
              lightMax = value;
            });
          },
        )
      ],
    );
  }
}

class SwitchFelt extends StatefulWidget {
  const SwitchFelt({super.key});
  @override
  State<SwitchFelt> createState() => _SwitchFelt();
}

class _SwitchFelt extends State<SwitchFelt> {
  bool lightF = UIdata().infcF;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const UIText(content: 'Felt Temp'),
        Switch(
          // This bool value toggles the switch.
          value: lightF,
          activeColor: const Color.fromARGB(255, 90, 175, 255),
          onChanged: (bool value) {
            Get.put(InformationController()).updateInformation(
                minTemp: STdata().infcMin.obs,
                maxTemp: STdata().infcMax.obs,
                uvIndicator: STdata().infcUV.obs,
                feltTemp: value.obs,
                pressure: STdata().infcP.obs,
                airQuality: STdata().infcA.obs);
            // This is called when the user toggles the switch.
            setState(() {
              lightF = value;
            });
          },
        )
      ],
    );
  }
}

class SwitchP extends StatefulWidget {
  const SwitchP({super.key});
  @override
  State<SwitchP> createState() => _SwitchP();
}

class _SwitchP extends State<SwitchP> {
  bool lightP = UIdata().infcP;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const UIText(content: 'Pressure'),
        Switch(
          // This bool value toggles the switch.
          value: lightP,
          activeColor: const Color.fromARGB(255, 90, 175, 255),
          onChanged: (bool value) {
            Get.put(InformationController()).updateInformation(
                minTemp: STdata().infcMin.obs,
                maxTemp: STdata().infcMax.obs,
                uvIndicator: STdata().infcUV.obs,
                feltTemp: STdata().infcF.obs,
                pressure: value.obs,
                airQuality: STdata().infcA.obs);
            // This is called when the user toggles the switch.
            setState(() {
              lightP = value;
            });
          },
        )
      ],
    );
  }
}

class SwitchAir extends StatefulWidget {
  const SwitchAir({super.key});
  @override
  State<SwitchAir> createState() => _SwitchAir();
}

class _SwitchAir extends State<SwitchAir> {
  bool lightAir = UIdata().infcA;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const UIText(content: 'Air quality'),
        Switch(
          // This bool value toggles the switch.
          value: lightAir,
          activeColor: const Color.fromARGB(255, 90, 175, 255),
          onChanged: (bool value) {
            Get.put(InformationController()).updateInformation(
                minTemp: STdata().infcMin.obs,
                maxTemp: STdata().infcMax.obs,
                uvIndicator: STdata().infcUV.obs,
                feltTemp: STdata().infcF.obs,
                pressure: STdata().infcP.obs,
                airQuality: value.obs);
            // This is called when the user toggles the switch.
            setState(() {
              lightAir = value;
            });
          },
        )
      ],
    );
  }
}
