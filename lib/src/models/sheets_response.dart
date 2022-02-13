import 'package:report_tools/src/models/sheets_model.dart';

class SheetsResponse {
  List<SheetsModel> dataList = <SheetsModel>[];
  String error = '';

  SheetsResponse.fromJson(List<dynamic> jsonList) {
    for (var element in jsonList) {
      SheetsModel model = SheetsModel();
      model.dateTime = element['dateTime'];
      model.thingsYesterday = element['things_yesterday'];
      model.thingsToday = element['things_today'];
      model.difficulty = element['difficulty'];

      dataList.add(model);
    }
    error = '';
  }

  SheetsResponse.showError(String content) {
    error = content;
    dataList = [];
  }
}
