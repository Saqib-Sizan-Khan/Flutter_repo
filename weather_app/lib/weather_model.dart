import 'package:intl/intl.dart';

class WeatherModel {
  final Map<String, dynamic> data = <String, dynamic>{};

  extractData(dynamic json) {

    DateTime wt = DateTime.parse(json['current']['last_updated']);

    data['locationName'] = json['location']['name'];
    data['temperature'] = json['current']['temp_c'].toString();
    data['condition'] = json['current']['condition']['text'];
    data['icon'] = json['current']['condition']['icon'];
    data['wind'] = json['current']['wind_kph'].toString();
    data['humidity'] = json['current']['humidity'].toString();
    data['weatherTime'] = DateFormat('d MMMM').format(wt);

    return data;
  }
}
