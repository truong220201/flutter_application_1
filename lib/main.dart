// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, missing_required_param, unused_local_variable, avoid_print, prefer_interpolation_to_compose_strings, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_4/cityList.dart';
import 'package:flutter_application_4/setting.dart';
import 'space/spaceWidthHeight.dart';
import 'fonts/fontTypography.dart';
import 'package:dots_indicator/dots_indicator.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'infomationController/information.dart';
import 'childBoxList/childBox.dart';
import 'UIdata/uiData.dart';
import 'data/dataCity.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp(
    id: null,
  ));
}

class ChildContainerMini extends StatelessWidget {
  const ChildContainerMini({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return UIdata().infcA
        ? Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            height: 100,
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.all(10),
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
            ))
        : Container();
  }
}

class Weather {
  final String maxTemp_c;
  final String name;
  final String temp;
  final String minTemp_c;
  final String uv;
  final String pressure;
  final String imgIcon;
  final String weather;
  final String feldTemp;

  Weather({
    required this.maxTemp_c,
    required this.name,
    required this.temp,
    required this.minTemp_c,
    required this.uv,
    required this.pressure,
    required this.imgIcon,
    required this.weather,
    required this.feldTemp,
  });
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      maxTemp_c:
          json['forecast']['forecastday'][0]['day']['maxtemp_c'].toString(),
      name: json['location']['name'].toString(),
      temp: json['current']['temp_c'].toString(),
      minTemp_c:
          json['forecast']['forecastday'][0]['day']['mintemp_c'].toString(),
      uv: json['current']['uv'].toString(),
      pressure: json['current']['pressure_mb'].toString(),
      imgIcon: json['current']['condition']['icon'].toString(),
      weather: json['current']['condition']['text'].toString(),
      feldTemp: json['current']['feelslike_c'].toString(),
    );
  }
  // Map<String, dynamic> toJson() => {
  //       'location': location,
  //     };
  // static List<Weather> listFromJson(List<dynamic> list) =>
  //     List<Weather>.from(list.map((x) => Weather.fromJson(x)));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, @required this.id});
  final id;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      getPages: [
        GetPage(name: '/', page: () => const MyApp()),
        GetPage(name: '/setting', page: () => const SettingForm()),
        GetPage(name: '/city', page: () => CityList()),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// int idCT = idCT == null ? idCT = 0 : idCT = Get.parameters['ID'] as int;
int idCT = 0;
String nameCity = ctlist[idCT].namecity;
String img = ctlist[idCT].imge;
String uv = ctlist[idCT].uvIndicator;
String apressure = ctlist[idCT].pressure;
String air = ctlist[idCT].airQuality;
String feld = ctlist[idCT].feltTemp;
String maxtemp = ctlist[idCT].maxtemp;
String mintemp = ctlist[idCT].mintemp;
String weather = ctlist[idCT].weather;
String temp = ctlist[idCT].temp;

// String nameCity = InforCity().name.toString();
// var maxtemp = InforCity().maxTemp.toString();
// var mintemp = InforCity().minTemp.toString();
// String weather = InforCity().weather.toString();
// var temp = InforCity().temp.toString();

final Dio dio = Dio();
void checkHttp(String info) async {
  try {
    final response =
        await dio.get(ConnectToApi.fullURL + info + ConnectToApi.inf);
    trueFalse = true;
  } on DioError catch (e) {
    trueFalse = false;
    print(e);
    throw Exception('Failed');
  }
}

Future<Weather> getHttp(String info) async {
  //String res;
  //print('aaaaaaa');
  try {
    final response =
        await dio.get(ConnectToApi.fullURL + info + ConnectToApi.inf);
    //Get.put(CityData().updateData(cityData: false.obs));

    //res = response.data.toString();

    //print(response.data.toString());
    // Get.put(CityData()).updateData(
    //     cityData: res.obs,
    //     );
    //return res;
    //debugPrint('aaaaaaa' + response.data.toString());

    return Weather.fromJson(response.data);
    //return response.data;
  } on DioError catch (e) {
    trueFalse = false;
    //Get.put(CityData().updateData(cityData: true.obs));
    print(e);
    throw Exception('Failed');
  }
}

// var a = Get.arguments;
// int checkNull(var a) {
//   print(a.runtimeType);
//   if (a == null) {
//     return 0;
//   } else {
//     return a;
//   }
// }

// int b = checkNull(a);

class _MyHomePageState extends State<MyHomePage> {
  late Future<Weather> _dataFuture;

  @override
  initState() {
    super.initState();
    print('aaaaaaaaaaaa' + Get.arguments.toString());
    _dataFuture = getHttp(nameCitya[Get.arguments ?? 0]);
    //getHttp();
    //print("initState Called" + (CityData().cityData.toString()));
    //print("initState Called" + (CityData().cityData.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<Weather>(
      future: _dataFuture,
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          print("Connection done.");
          if (snapshot.hasData) {
            //Weather? cityInfo = snapshot.data;
            var a = snapshot.data;
            print("${a!.name}");
            nameCity = a.name;
            temp = a.temp;
            maxtemp = a.maxTemp_c;
            mintemp = a.minTemp_c;
            weather = a.weather;
            uv = a.uv;
            feld = a.feldTemp;
            img = a.imgIcon;
            apressure = a.pressure;
            air = 'Air Quality';
            // Get.put(InforCity().updateCity(
            //     name: a.name.toString(),
            //     minTemp: a.minTemp_c.toString(),
            //     maxTemp: a.maxTemp_c.toString(),
            //     uvIndicator: a.uv.toString(),
            //     feltTemp: a.feldTemp.toString(),
            //     pressure: a.pressure.toString(),
            //     airQuality: 'airQuality',
            //     imge: a.imgIcon.toString()));
            //Map<dynamic, dynamic> map = snapshot.data;
            //print("imggggggggg ${a.imgIcon.replaceFirst(RegExp(r'//'), '')}");
          } else {
            print("no data ${snapshot.data}");
          }
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_constructors
              children: [Text('Loading...'), CircularProgressIndicator()],
            ),
          );
        }

        //print("initState Calleda ${snapshot.data}");

        //final resa = snapshot.data;
        //var c = '.location';

        return Container(
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
          // ignore: sort_child_properties_last
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            Expanded(
              flex: 2,
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(0, 0, 0, 0),
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(nameCity,
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: NORMALSIZE,
                                    color: const Color(0xFFFFFFFF),
                                    fontFamily: 'BasierCircle',
                                  )),
                            ),
                            Expanded(
                              child: Text('Jul 13 2021',
                                  style: TextStyle(
                                    fontSize: MINISIZE,
                                    color: const Color.fromARGB(
                                        125, 255, 255, 255),
                                    fontFamily: 'BasierCircle',
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () => Get.to(CityList()),
                          // ignore: prefer_const_constructors
                          child: Icon(
                            Icons.view_quilt_outlined,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            size: 35.0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () => Get.to(const SettingForm()),
                          // ignore: prefer_const_constructors
                          child: Icon(
                            Icons.settings,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            size: 35.0,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Expanded(
              flex: 15,
              child: Container(
                  padding: const EdgeInsets.all(00),
                  // ignore: sort_child_properties_last
                  child: LayoutBuilder(
                    builder: (BuildContext context,
                        BoxConstraints viewportConstraints) {
                      return SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: viewportConstraints.maxHeight,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: 250,
                                  decoration: const BoxDecoration(),
                                  child: Column(children: [
                                    // Image.asset(
                                    //   Utils.imgClould,
                                    //   width: 200.0.pxToPercentage(context),
                                    // ),

                                    // Image.network(
                                    //   'https://i.stack.imgur.com/kr90n.png',
                                    //   width: 200.0.pxToPercentage(context),
                                    //   fit: BoxFit.cover,
                                    // ),
                                    Image.network(
                                      "http://" +
                                          img
                                              .replaceFirst(RegExp(r'//'), '')
                                              .toString(),
                                      width: 140.0.pxToPercentage(context),
                                      fit: BoxFit.cover,
                                    ),
                                    Text('$temp°',
                                        style: TextStyle(
                                          fontSize: TITLESIZE,
                                          color: const Color(0xFFFFFFFF),
                                          fontFamily: 'BasierCircle',
                                        )),
                                    Text(weather,
                                        style: TextStyle(
                                          fontSize: STITLESIZE,
                                          color: const Color(0xFFFFFFFF),
                                          fontFamily: 'BasierCircle',
                                        )),
                                  ])),
                              Row(children: [
                                UIdata().infcMin
                                    ? childMiniBox(
                                        title: 'MIN TEMP',
                                        // ignore: prefer_interpolation_to_compose_strings
                                        temperature: mintemp + '°',
                                        minmax: 'Min',
                                      )
                                    : Container(),
                                UIdata().infcMax && UIdata().infcMin
                                    ? spaceWidth()
                                    : Container(),
                                UIdata().infcMax
                                    ? childMiniBox(
                                        title: 'MAX TEMP',
                                        temperature: maxtemp + '°',
                                        minmax: 'Max',
                                      )
                                    : Container(),
                              ]),
                              spaceHeight(),
                              (UIdata().infcUV ||
                                      UIdata().infcF ||
                                      UIdata().infcP)
                                  ? Row(
                                      children: [
                                        UIdata().infcUV
                                            ? childNormalBox(
                                                title: 'Uv Indicator',
                                                temperature: uv,
                                                minmax: 'Low',
                                                content:
                                                    'Low level during all the day.')
                                            : Container(),
                                        Get.put(InformationController())
                                                    .uvIndicator
                                                    .value &&
                                                (UIdata().infcP ||
                                                    UIdata().infcF)
                                            ? spaceWidth()
                                            : Container(),
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                height: 180.0,
                                                child: Column(
                                                  children: [
                                                    UIdata().infcF
                                                        // ignore: prefer_const_constructors
                                                        ? childHalfMiniBox(
                                                            title: 'FEELS LIKE',
                                                            temperature: feld,
                                                          )
                                                        : Container(),
                                                    (UIdata().infcF &&
                                                            UIdata().infcP)
                                                        ? spaceHeight()
                                                        : Container(),
                                                    UIdata().infcP
                                                        ? childHalfMiniBox(
                                                            title: 'PRESSURE',
                                                            temperature:
                                                                '$apressure hPa',
                                                          )
                                                        : Container()
                                                  ],
                                                ))),
                                        //spaceHeight(),
                                      ],
                                    )
                                  : Container(),
                              spaceHeight(),
                              for (var i = 0; i < 5; i++) ...[
                                const ChildContainerMini()
                              ],
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  decoration: const BoxDecoration()),
            ),
            Stack(
              children: [
                Container(
                  color: const Color.fromARGB(0, 255, 193, 7),
                  child: DotsIndicator(
                    dotsCount: 5,
                    position: 2,
                    decorator: const DotsDecorator(
                      color:
                          Color.fromARGB(193, 255, 255, 255), // Inactive color
                      activeColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                )
              ],
            )
          ]),
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
        );
      }),
    )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
