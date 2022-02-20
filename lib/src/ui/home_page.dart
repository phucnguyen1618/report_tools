import 'package:flutter/material.dart';
import 'package:report_tools/src/blocs/home_bloc.dart';
import 'package:report_tools/src/models/sheets_response.dart';
import 'package:report_tools/src/ui/item_sheets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    homeBloc.fetchAllData();
  }

  @override
  void dispose() {
    super.dispose();
    homeBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Report Tools',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              homeBloc.fetchAllData();
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: StreamBuilder(
        stream: homeBloc.sheetDataStream,
        builder:
            (BuildContext context, AsyncSnapshot<SheetsResponse> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<SheetsResponse> snapshot) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          snapshot.data!.dataList.length,
          (index) => ItemSheets(
            sheetsModel: snapshot.data!.dataList[index],
          ),
        ),
      ),
    );
  }
}
