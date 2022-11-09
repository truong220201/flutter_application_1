// ignore: depend_on_referenced_packages
// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, unused_local_variable, constant_identifier_names, duplicate_ignore, file_names

import 'package:get/get.dart';
import '../infomationController/information.dart';

void Weather() {
  String WeatherIs = '';
}

// class UIdata {
//   bool infcMax = Get.put(InformationController()).maxTemp.value;
//   bool infcMin = Get.put(InformationController()).minTemp.value;
//   bool infcUV = Get.put(InformationController()).uvIndicator.value;
//   bool infcF = Get.put(InformationController()).feltTemp.value;
//   bool infcP = Get.put(InformationController()).pressure.value;
//   bool infcA = Get.put(InformationController()).airQuality.value;
//   int cityL = Get.put(VariableN()).city.value;
// }
class UIdata {
  bool infcMax = Get.put(InformationController()).maxTemp.value;
  bool infcMin = Get.put(InformationController()).minTemp.value;
  bool infcUV = Get.put(InformationController()).uvIndicator.value;
  bool infcF = Get.put(InformationController()).feltTemp.value;
  bool infcP = Get.put(InformationController()).pressure.value;
  bool infcA = Get.put(InformationController()).airQuality.value;
  int cityL = Get.put(VariableN()).city.value;
}

class Utils {
  static const String imageSrc = 'assetsa/images';
  static const String imgFirst = '$imageSrc/clould.png';
  static const String imgClould = '$imageSrc/clould.png';
  static const String imgSunny = '$imageSrc/Sunny.png';
  static const String imgRainy = '$imageSrc/Rainy.png';
}

class ConnectToApi {
  static const String Key = '448e87105e044e988f291844220711';
  static const String URL = 'http://api.weatherapi.com/v1';
  static const String CurrentWeather = '/current.json';
  static const String Forecast = '/forecast.json';
  static const String Future = '/future.json';
  static const String Sports = '/sports.json';
  static const String fullURL =
      'http://api.weatherapi.com/v1$Forecast?key=$Key&q=';
  static const String inf = '&aqi=no';
}

class STdata {
  bool infcMax = Get.put(InformationController()).maxTemp.value;
  bool infcMin = Get.put(InformationController()).minTemp.value;
  bool infcUV = Get.put(InformationController()).uvIndicator.value;
  bool infcF = Get.put(InformationController()).feltTemp.value;
  bool infcP = Get.put(InformationController()).pressure.value;
  bool infcA = Get.put(InformationController()).airQuality.value;
}
