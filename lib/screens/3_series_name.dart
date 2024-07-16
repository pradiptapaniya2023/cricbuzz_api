import 'package:flutter/material.dart';
import '../api_class/cricbuzz_api.dart';
import '2_match_type.dart';
import '4_match_info.dart';

class SeriesName extends StatefulWidget {
  List<SeriesMatches>? seriesMatch;
  String? matchType;

  SeriesName(this.seriesMatch, this.matchType);

  @override
  State<SeriesName> createState() => _SeriesNameState();
}

class _SeriesNameState extends State<SeriesName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.matchType} => series name",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: MatchType.cm != null
          ? ListView.builder(
              itemCount: widget.seriesMatch!.length,
              itemBuilder: (context, index) {
                return Visibility(
                  visible: widget.seriesMatch![index].seriesAdWrapper != null,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Match_Info(
                                widget.seriesMatch![index].seriesAdWrapper
                                    ?.seriesName,
                                widget.seriesMatch![index].seriesAdWrapper!
                                    .matches);
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
                          "${widget.seriesMatch![index].seriesAdWrapper?.seriesName}",
                          style: TextStyle(fontSize: 20),
                        )),
                      ),
                    ),
                  ),
                );
              },
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
