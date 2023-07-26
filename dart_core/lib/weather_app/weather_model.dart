import 'package:intl/intl.dart';

class WeatherModel {
  Map<String, dynamic> extractData(dynamic jsonResponse) {
    final Map<String, dynamic> data = Map<String, dynamic>();

    DateTime wt = DateTime.parse(jsonResponse['current']['last_updated']);

    data['locationName'] = jsonResponse['location']['name'];
    data['temperature'] = jsonResponse['current']['temp_c'].toString();
    data['condition'] = jsonResponse['current']['condition']['text'];
    data['icon'] = jsonResponse['current']['condition']['icon'];
    data['wind'] = jsonResponse['current']['wind_kph'].toString();
    data['humidity'] = jsonResponse['current']['humidity'].toString();
    data['weatherTime'] = DateFormat('d MMMM').format(wt);

    return data;
  }
}
