class SheetsModel {
  String? dateTime = '';
  String? thingsYesterday = '';
  String? thingsToday = '';
  String? difficulty = '';

  SheetsModel({
    this.dateTime,
    this.thingsYesterday,
    this.thingsToday,
    this.difficulty,
  });

  SheetsModel.fromJson(Map<String, String> json) {
    dateTime = json['dateTime'];
    thingsYesterday = json['things_yesterday'];
    thingsToday = json['things_today'];
    difficulty = json['difficulty'];
  }
}
