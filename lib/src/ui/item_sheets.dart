import 'package:flutter/material.dart';
import 'package:report_tools/src/models/sheets_model.dart';

class ItemSheets extends StatelessWidget {
  const ItemSheets({Key? key, required this.sheetsModel}) : super(key: key);

  final SheetsModel sheetsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        sheetsModel.thingsToday.toString().toUpperCase().trim(),
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sheetsModel.dateTime.toString(),
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
          Text(
            sheetsModel.thingsYesterday.toString().trim(),
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
