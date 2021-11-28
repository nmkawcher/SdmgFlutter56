class MainResponse {
  final Coord coord;
  final List<Weather> weatherList;
  final String base;
  final Main main;
  final int visibility;
  final Wind wind;
  final Clouds clouds;
  final int dt;
  final Sys sys;
  final int id;
  final String name;
  final int cod;

MainResponse({required this.coord,required this.weatherList,
required this.base,required this.main,required this.visibility,required this.wind,required this.clouds,required this.dt,required this.sys,required this.id,required this.name,required this.cod});

Coord get getCoord=>coord;
List<Weather> get getWeatherList=>weatherList;
String get getBase=>base;
Main get getMain=>main;
int get getVisibility=>visibility;
Wind get getWind=>wind;
Clouds get getClouds=>clouds;
int get getDt=>dt;
Sys get getSys=>sys;
int get getId=>id;
String get getName=>name;
int get getCod=>cod;

}

class Sys {
  final int type;
  final int id;
  final double message;
  final String country;
  final int sunrise;
  final int sunset;

  Sys(
      {required this.type,
      required this.id,
      required this.message,
      required this.country,
      required this.sunrise,
      required this.sunset});

  int get getType=>type;
  int get getId=>id;
  double get getMessage=>message;
  String get getCountry=>country;
  int get getSunrise=>sunrise;
  int get getSunset=>sunset;
}

class Clouds {
  final int dt;

  Clouds({required this.dt});

  int get getDt => dt;
}

class Wind {
  final double speed;
  final int deg;

  Wind({required this.speed, required this.deg});

  double get getSpeed => speed;

  int get getDeg => deg;
}

class Main {
  final double temp;
  final int pressure;
  final int humidity;
  final double temp_min;
  final double temp_max;

  Main(
      {required this.temp,
      required this.pressure,
      required this.humidity,
      required this.temp_min,
      required this.temp_max});

  double get getTemp => temp;

  int get getPressure => pressure;

  int get getHumidity => humidity;

  double get getTempMin => temp_min;

  double get getTempMax => temp_max;
}

class Weather {
  final int id;
  final String main;
  final String description;
  final String icon;

  Weather(
      {required this.id,
      required this.icon,
      required this.description,
      required this.main});

  int get getId => id;

  String get getMain => main;

  String get getDescription => description;

  String get getIcon => icon;
}

class Coord {
  final double lon;
  final double lat;

  Coord({required this.lon, required this.lat});

  double get getLon => lon;

  double get getLat => lat;
}

/*
class MainResponse {
  late final Coord coord;
 final List<Weather> weather;
 final  String base;
 final  Main main;
 final  int visibility;
 final  Wind wind;
 final  Clouds clouds;
 final  int dt;
 final  Sys sys;
 final int id;
 final  String name;
  final int cod;



  MainResponse(
      {
    required this.coord ,
    required this.weather ,
    required this.base ,
    required this.main ,
    this._visibility = visibility;
    this._wind = wind;
    this._clouds = clouds;
    this._dt = dt;
    this._sys = sys;
    this._id = id;
    this._name = name;
    this._cod = cod;
  }

  Coord get coord => _coord;
  set coord(Coord coord) => _coord = coord;
  List<Weather> get weather => _weather;
  set weather(List<Weather> weather) => _weather = weather;
  String get base => _base;
  set base(String base) => _base = base;
  Main get main => _main;
  set main(Main main) => _main = main;
  int get visibility => _visibility;
  set visibility(int visibility) => _visibility = visibility;
  Wind get wind => _wind;
  set wind(Wind wind) => _wind = wind;
  Clouds get clouds => _clouds;
  set clouds(Clouds clouds) => _clouds = clouds;
  int get dt => _dt;
  set dt(int dt) => _dt = dt;
  Sys get sys => _sys;
  set sys(Sys sys) => _sys = sys;
  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  int get cod => _cod;
  set cod(int cod) => _cod = cod;

  MainResponse.fromJson(Map<String, dynamic> json) {
    _coord = json['coord'] != null ? new Coord.fromJson(json['coord']) : null;
    if (json['weather'] != null) {
      _weather = new List<Weather>();
      json['weather'].forEach((v) {
        _weather.add(new Weather.fromJson(v));
      });
    }
    _base = json['base'];
    _main = json['main'] != null ? new Main.fromJson(json['main']) : null;
    _visibility = json['visibility'];
    _wind = json['wind'] != null ? new Wind.fromJson(json['wind']) : null;
    _clouds =
    json['clouds'] != null ? new Clouds.fromJson(json['clouds']) : null;
    _dt = json['dt'];
    _sys = json['sys'] != null ? new Sys.fromJson(json['sys']) : null;
    _id = json['id'];
    _name = json['name'];
    _cod = json['cod'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._coord != null) {
      data['coord'] = this._coord.toJson();
    }
    if (this._weather != null) {
      data['weather'] = this._weather.map((v) => v.toJson()).toList();
    }
    data['base'] = this._base;
    if (this._main != null) {
      data['main'] = this._main.toJson();
    }
    data['visibility'] = this._visibility;
    if (this._wind != null) {
      data['wind'] = this._wind.toJson();
    }
    if (this._clouds != null) {
      data['clouds'] = this._clouds.toJson();
    }
    data['dt'] = this._dt;
    if (this._sys != null) {
      data['sys'] = this._sys.toJson();
    }
    data['id'] = this._id;
    data['name'] = this._name;
    data['cod'] = this._cod;
    return data;
  }
}

class Coord {
  double _lon;
  double _lat;

  Coord({double lon, double lat}) {
    this._lon = lon;
    this._lat = lat;
  }

  double get lon => _lon;
  set lon(double lon) => _lon = lon;
  double get lat => _lat;
  set lat(double lat) => _lat = lat;

  Coord.fromJson(Map<String, dynamic> json) {
    _lon = json['lon'];
    _lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lon'] = this._lon;
    data['lat'] = this._lat;
    return data;
  }
}

class Weather {
  int _id;
  String _main;
  String _description;
  String _icon;

  Weather({int id, String main, String description, String icon}) {
    this._id = id;
    this._main = main;
    this._description = description;
    this._icon = icon;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get main => _main;
  set main(String main) => _main = main;
  String get description => _description;
  set description(String description) => _description = description;
  String get icon => _icon;
  set icon(String icon) => _icon = icon;

  Weather.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _main = json['main'];
    _description = json['description'];
    _icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['main'] = this._main;
    data['description'] = this._description;
    data['icon'] = this._icon;
    return data;
  }
}

class Main {
  double _temp;
  int _pressure;
  int _humidity;
  double _tempMin;
  double _tempMax;

  Main(
      {double temp,
        int pressure,
        int humidity,
        double tempMin,
        double tempMax}) {
    this._temp = temp;
    this._pressure = pressure;
    this._humidity = humidity;
    this._tempMin = tempMin;
    this._tempMax = tempMax;
  }

  double get temp => _temp;
  set temp(double temp) => _temp = temp;
  int get pressure => _pressure;
  set pressure(int pressure) => _pressure = pressure;
  int get humidity => _humidity;
  set humidity(int humidity) => _humidity = humidity;
  double get tempMin => _tempMin;
  set tempMin(double tempMin) => _tempMin = tempMin;
  double get tempMax => _tempMax;
  set tempMax(double tempMax) => _tempMax = tempMax;

  Main.fromJson(Map<String, dynamic> json) {
    _temp = json['temp'];
    _pressure = json['pressure'];
    _humidity = json['humidity'];
    _tempMin = json['temp_min'];
    _tempMax = json['temp_max'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp'] = this._temp;
    data['pressure'] = this._pressure;
    data['humidity'] = this._humidity;
    data['temp_min'] = this._tempMin;
    data['temp_max'] = this._tempMax;
    return data;
  }
}

class Wind {
  double _speed;
  int _deg;

  Wind({double speed, int deg}) {
    this._speed = speed;
    this._deg = deg;
  }

  double get speed => _speed;
  set speed(double speed) => _speed = speed;
  int get deg => _deg;
  set deg(int deg) => _deg = deg;

  Wind.fromJson(Map<String, dynamic> json) {
    _speed = json['speed'];
    _deg = json['deg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speed'] = this._speed;
    data['deg'] = this._deg;
    return data;
  }
}

class Clouds {
  int _all;

  Clouds({int all}) {
    this._all = all;
  }

  int get all => _all;
  set all(int all) => _all = all;

  Clouds.fromJson(Map<String, dynamic> json) {
    _all = json['all'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all'] = this._all;
    return data;
  }
}

class Sys {
  int _type;
  int _id;
  double _message;
  String _country;
  int _sunrise;
  int _sunset;

  Sys(
      {int type,
        int id,
        double message,
        String country,
        int sunrise,
        int sunset}) {
    this._type = type;
    this._id = id;
    this._message = message;
    this._country = country;
    this._sunrise = sunrise;
    this._sunset = sunset;
  }

  int get type => _type;
  set type(int type) => _type = type;
  int get id => _id;
  set id(int id) => _id = id;
  double get message => _message;
  set message(double message) => _message = message;
  String get country => _country;
  set country(String country) => _country = country;
  int get sunrise => _sunrise;
  set sunrise(int sunrise) => _sunrise = sunrise;
  int get sunset => _sunset;
  set sunset(int sunset) => _sunset = sunset;

  Sys.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _id = json['id'];
    _message = json['message'];
    _country = json['country'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    data['id'] = this._id;
    data['message'] = this._message;
    data['country'] = this._country;
    data['sunrise'] = this._sunrise;
    data['sunset'] = this._sunset;
    return data;
  }
}*/
