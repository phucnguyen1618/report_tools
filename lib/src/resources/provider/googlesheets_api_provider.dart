import 'package:dio/dio.dart';
import 'package:report_tools/src/models/sheets_response.dart';

class GoogleSheetsApiProvider {
  String urlRequest =
      'https://script.google.com/macros/s/AKfycbyFNtg1T-xlAGmQDyWs9phYEWOPBpVPV7rYfFaXkLx2EAyQzRs/exec';
  Dio dio = Dio();

  Future<SheetsResponse> fetchDataFromGoogleSheets() async {
    try {
      Response response = await dio.get(urlRequest);
      return SheetsResponse.fromJson(response.data);
    } catch (error) {
      return SheetsResponse.showError(error.toString());
    }
  }
}
