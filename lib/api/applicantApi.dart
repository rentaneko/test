import 'package:project07/api/network.dart';

const String applicantAPIUrl =
    'http://instancejob2.azurewebsites.net/api/applicants';

class ApplicantAPI {
  Future<dynamic> getAllApplicant() async {
    Network network = Network('$applicantAPIUrl');
    var applicantData = await network.getData();
    return applicantData;
  }
}
