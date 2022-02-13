import 'package:flutter/material.dart';
import 'package:report_tools/src/models/sheets_model.dart';

class ItemSheets extends StatelessWidget {
  const ItemSheets({Key? key, required this.sheetsModel}) : super(key: key);

  final SheetsModel sheetsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        sheetsModel.thingsYesterday.toString(),
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        sheetsModel.thingsToday.toString(),
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.grey,
        ),
      ),
      trailing: Text(
        sheetsModel.dateTime.toString(),
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
