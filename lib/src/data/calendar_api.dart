import 'dart:convert';

import 'package:http/http.dart';

class CalendarApi {
  Future<List<dynamic>> getHolidays() async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'calendarific.com',
      pathSegments: <String>['api', 'v2', 'holidays'],
      queryParameters: <String, String>{
        'api_key': '84109344d1c9cf05e68ad735a08628d8673eb12c',
        'country': 'RO',
        'year': '2021'
      }
    );

    final Response response = await get(uri);

    if(response.statusCode != 200) {
      throw StateError('Error fetching the holidays');
    }

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    final Map<String, dynamic> data = body['response'] as Map<String, dynamic>;
    final List<dynamic> holidays = data['holidays'] as List<Map<String, dynamic>>;

    return holidays;
  }
}
