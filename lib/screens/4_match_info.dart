import 'package:cricbuzz_api/api_class/cricbuzz_api.dart';
import 'package:flutter/material.dart';

class Match_Info extends StatefulWidget {
  String? seriesName;
  List<Matches>? matches;

  Match_Info(this.seriesName, this.matches);

  @override
  State<Match_Info> createState() => _MatchInfoState();
}

class _MatchInfoState extends State<Match_Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "${widget.seriesName}",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
          itemCount: widget.matches!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: Center(
                    child: Text(
                  "${widget.matches![index].matchInfo!.status}",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            );
          },
        ));
  }
}
