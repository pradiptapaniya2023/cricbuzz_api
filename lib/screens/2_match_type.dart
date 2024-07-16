import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../api_class/cricbuzz_api.dart';
import '3_series_name.dart';

class MatchType extends StatefulWidget {
  static C_Matches? cm;

  const MatchType({super.key});

  @override
  State<MatchType> createState() => _MatchTypeState();
}

class _MatchTypeState extends State<MatchType> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Match Type",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: MatchType.cm != null
          ?  ListView.builder(
              itemCount: MatchType.cm!.typeMatches!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SeriesName(
                              MatchType.cm!.typeMatches![index].seriesMatches,
                              MatchType.cm!.typeMatches![index].matchType);
                        },
                      ));
                    },
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Center(
                          child: Text(
                        "${MatchType.cm!.typeMatches![index].matchType}",
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                  ),
                );
              },
            )
          : Center(child: CircularProgressIndicator()),
    );
  }

  Future<void> fetchData() async {
    var url =
        Uri.parse('https://cricbuzz-cricket.p.rapidapi.com/matches/v1/recent');
    var response = await http.get(url, headers: {
      "x-rapidapi-key": "3925259f0cmsh73e90164d5b335fp1736c6jsn80b023fa60b7",
      "x-rapidapi-host": "cricbuzz-cricket.p.rapidapi.com"
    });
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    setState(() {
      Map<String, dynamic> jsonToDart = json.decode(response.body);
      MatchType.cm = C_Matches.fromJson(jsonToDart);
    });
  }
}
