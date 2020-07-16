import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project06/model/job/jobs.dart';

Future<List<Job>> getJobService()  {
  Future<List<Job>> fetchData() async {
    http.Response response = await http.get('https://instancejob2.azurewebsites.net/api/jobs');
    print('result' + response.statusCode.toString());
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List).map((e) => Job.fromJson(e)).toList();
    }else{
      return null;
    } 
  }
  Future<List<Job>> listJob = fetchData();

  return listJob;
}