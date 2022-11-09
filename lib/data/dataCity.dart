var hide = false;

// ignore: file_names
class City {
  String namecity;
  String maxtemp;
  String mintemp;
  String weather;
  String temp;
  var uvIndicator = '';
  var feltTemp = '';
  var pressure = '';
  var airQuality = '';
  var imge = '';
  City({
    required this.namecity,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.weather,
    required this.uvIndicator,
    required this.feltTemp,
    required this.pressure,
    required this.airQuality,
    required this.imge,
  });
}

var ctlist = [
  City(
    namecity: "Escondido",
    maxtemp: '23',
    mintemp: '7',
    temp: '18',
    weather: 'Clouldy',
    uvIndicator: "1",
    feltTemp: '23',
    pressure: '7',
    airQuality: '18',
    imge: 'Clouldy',
  ),
];

var nameCitya = ['London', 'Hanoi'];
