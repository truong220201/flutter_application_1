import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class CityData extends GetxController {
  var cityData = false.obs;
  updateData({
    @required cityData,
  }) {
    this.cityData = cityData;
  }
}

var trueFalse = true;

class InformationController extends GetxController {
  var minTemp = true.obs;
  var maxTemp = true.obs;
  var uvIndicator = true.obs;
  var feltTemp = true.obs;
  var pressure = true.obs;
  var airQuality = true.obs;

  updateInformation({
    @required minTemp,
    @required maxTemp,
    @required uvIndicator,
    @required feltTemp,
    @required pressure,
    @required airQuality,
  }) {
    this.minTemp = minTemp;
    this.maxTemp = maxTemp;
    this.uvIndicator = uvIndicator;
    this.feltTemp = feltTemp;
    this.pressure = pressure;
    this.airQuality = airQuality;
  }
}

class VariableN extends GetxController {
  var city = 0.obs;

  updateVariable({@required city}) {
    this.city = city;
  }
}

class InforCity extends GetxController {
  var name = ''.obs;
  var temp = ''.obs;
  var minTemp = ''.obs;
  var maxTemp = ''.obs;
  var uvIndicator = ''.obs;
  var feltTemp = ''.obs;
  var pressure = ''.obs;
  var airQuality = ''.obs;
  var weather = ''.obs;
  var imge = ''.obs;
  updateCity({
    @required name,
    @required temp,
    @required minTemp,
    @required maxTemp,
    @required uvIndicator,
    @required feltTemp,
    @required pressure,
    @required airQuality,
    @required weather,
    @required imge,
  }) {
    this.name = name;
    this.temp = temp;
    this.minTemp = minTemp;
    this.maxTemp = maxTemp;
    this.uvIndicator = uvIndicator;
    this.feltTemp = feltTemp;
    this.pressure = pressure;
    this.airQuality = airQuality;
    this.imge = imge;
    this.weather = weather;
  }
}
