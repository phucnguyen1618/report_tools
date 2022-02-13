import 'package:report_tools/src/models/sheets_response.dart';
import 'package:report_tools/src/resources/repository/googlesheets_repository.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc {
  final GoogleSheetsRepository _repository = GoogleSheetsRepository();
  final BehaviorSubject<SheetsResponse> _subject = BehaviorSubject<SheetsResponse>();

  Stream<SheetsResponse> get sheetDataStream => _subject.stream;

  fetchAllData() async {
    SheetsResponse response = await _repository.fetchData();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }
}
final homeBloc = HomeBloc();