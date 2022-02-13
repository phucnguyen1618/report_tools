import 'package:report_tools/src/models/sheets_response.dart';
import 'package:report_tools/src/resources/provider/googlesheets_api_provider.dart';

class GoogleSheetsRepository {
  final GoogleSheetsApiProvider _apiProvider = GoogleSheetsApiProvider();

  Future<SheetsResponse> fetchData() async {
    return _apiProvider.fetchDataFromGoogleSheets();
  }
}