import 'package:flutter/material.dart';
import 'color/getColor.dart';
import 'space/spaceWidthHeight.dart';
import 'fonts/fontTypography.dart';

void main() {
  runApp(const MyApp());
}

//asset/font
class UIdata {
  static const String imageSrc = 'assetsa/images';
  static const String imgFirst = '$imageSrc/clould.png';
  static const String imgClould = '$imageSrc/clould.png';
}

class childHalfMiniBox extends StatelessWidget {
  @override
  const childHalfMiniBox({super.key});

  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: Color.fromARGB(54, 255, 255, 255)),
        boxShadow: [
          BoxShadow(
            color: BLACKCOLOR,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        gradient: LinearGradient(
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

class childMiniBox extends StatelessWidget {
  childMiniBox(
      {Key? key,
      required this.title,
      required this.temperature,
      required this.minmax})
      : super(key: key);
  final title;
  final temperature;
  final minmax;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('$title',
                style: TextStyle(
                  fontSize: MINISIZE,
                  color: Color.fromARGB(117, 255, 255, 255),
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
                ))
          ]),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          height: 120.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border:
                Border.all(width: 2, color: Color.fromARGB(54, 255, 255, 255)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(5, 255, 255, 255),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            gradient: LinearGradient(
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

class childContainerMini extends StatelessWidget {
  const childContainerMini({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      // A fixed-height child.

      color: const Color(0xffeeee00), // Yellow
      height: 120.0,
      alignment: Alignment.center,
      child: const Text('Fixed Height Content'),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _counter = 0;

  void tang() {
    _counter++;
  }

  onChange() {
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double widthd = MediaQuery.of(context).size.width;
    double heightd = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text('Escondido',
                          style: TextStyle(
                            fontSize: NORMALSIZE,
                            color: const Color(0xFFFFFFFF),
                            fontFamily: 'BasierCircle',
                          )),
                    ),
                    Expanded(
                      child: Text('Jul 13 2021',
                          style: TextStyle(
                            fontSize: MINISIZE,
                            color: Color.fromARGB(125, 255, 255, 255),
                            fontFamily: 'BasierCircle',
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                  padding: EdgeInsets.all(00),
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
                                  child: Column(children: [
                                    Image.asset(
                                      UIdata.imgClould,
                                      width: 200.0.pxToPercentage(context),
                                    ),
                                    Text('18°',
                                        style: TextStyle(
                                          fontSize: TITLESIZE,
                                          color: Color(0xFFFFFFFF),
                                          fontFamily: 'BasierCircle',
                                        )),
                                    Text('Clouldy',
                                        style: TextStyle(
                                          fontSize: STITLESIZE,
                                          color: Color(0xFFFFFFFF),
                                          fontFamily: 'BasierCircle',
                                        )),
                                  ]),
                                  height: 250,
                                  decoration: const BoxDecoration()),
                              Container(
                                child: Row(children: [
                                  childMiniBox(
                                    title: 'hello',
                                    temperature: '7°',
                                    minmax: 'Max',
                                  ),
                                  spaceWidth(),
                                  childMiniBox(
                                    title: 'hello',
                                    temperature: '23°',
                                    minmax: 'Min',
                                  ),
                                ]),
                              ),
                              spaceHeight(),
                              Container(
                                  child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2,
                                              color: Color.fromARGB(
                                                  54, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  5, 255, 255, 255),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment(0.8, 1),
                                            colors: <Color>[
                                              Color.fromARGB(77, 255, 255, 255),
                                              Color.fromARGB(0, 255, 255, 255),
                                            ], // Gradient from https://learnui.design/tools/gradient-generator.html
                                            tileMode: TileMode.mirror,
                                          ),
                                        ),
                                      )),
                                  spaceWidth(),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          height: 180.0,
                                          child: Column(
                                            children: [
                                              childHalfMiniBox(),
                                              spaceHeight(),
                                              childHalfMiniBox()
                                            ],
                                          ))),
                                  spaceHeight(),
                                ],
                              )),
                              for (var i = 0; i < 5; i++) ...[
                                childContainerMini()
                              ],
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  decoration: const BoxDecoration()),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  child: Column(children: [
                    Expanded(
                        child: Container(
                      child: Row(children: [
                        Expanded(
                            flex: 1,
                            child: Center(
                              child: Text('$_counter'),
                            )),
                        Image.asset(
                            UIdata.imgFirst), //imgFirst from UIdata class
                        Expanded(
                            flex: 3,
                            child: Container(
                              child: TextButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                ),
                                onPressed: () => {_incrementCounter()},
                                child: Text('TextButton'),
                              ),
                            ))
                      ]),
                    ))
                  ]),
                  decoration: const BoxDecoration(
                      border: Border(
                    top: BorderSide(color: Color(0xFFFFFFFF)),
                    left: BorderSide(color: Color(0xFFFFFFFF)),
                    right: BorderSide(color: Color(0xFFFFFFFF)),
                    bottom: BorderSide(color: Color(0xFFFFFFFF)),
                  ))),
            )
          ],
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
