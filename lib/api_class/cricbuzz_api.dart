// https://cricbuzz-cricket.p.rapidapi.com/matches/v1/recent
// header : x-rapidapi-key : 3925259f0cmsh73e90164d5b335fp1736c6jsn80b023fa60b7
// header2 : x-rapidapi-host :  cricbuzz-cricket.p.rapidapi.com
// map -> list


class C_Matches {
  List<TypeMatches>? typeMatches;
  Filters? filters;
  AppIndex? appIndex;
  String? responseLastUpdated;

  C_Matches(
      {this.typeMatches,
        this.filters,
        this.appIndex,
        this.responseLastUpdated});

  C_Matches.fromJson(Map<String, dynamic> json) {
    if (json['typeMatches'] != null) {
      typeMatches = <TypeMatches>[];
      json['typeMatches'].forEach((v) {
        typeMatches!.add(new TypeMatches.fromJson(v));
      });
    }
    filters =
    json['filters'] != null ? new Filters.fromJson(json['filters']) : null;
    appIndex = json['appIndex'] != null
        ? new AppIndex.fromJson(json['appIndex'])
        : null;
    responseLastUpdated = json['responseLastUpdated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.typeMatches != null) {
      data['typeMatches'] = this.typeMatches!.map((v) => v.toJson()).toList();
    }
    if (this.filters != null) {
      data['filters'] = this.filters!.toJson();
    }
    if (this.appIndex != null) {
      data['appIndex'] = this.appIndex!.toJson();
    }
    data['responseLastUpdated'] = this.responseLastUpdated;
    return data;
  }
}

class TypeMatches {
  String? matchType;
  List<SeriesMatches>? seriesMatches;

  TypeMatches({this.matchType, this.seriesMatches});

  TypeMatches.fromJson(Map<String, dynamic> json) {
    matchType = json['matchType'];
    if (json['seriesMatches'] != null) {
      seriesMatches = <SeriesMatches>[];
      json['seriesMatches'].forEach((v) {
        seriesMatches!.add(new SeriesMatches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['matchType'] = this.matchType;
    if (this.seriesMatches != null) {
      data['seriesMatches'] =
          this.seriesMatches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SeriesMatches {
  SeriesAdWrapper? seriesAdWrapper;
  AdDetail? adDetail;

  SeriesMatches({this.seriesAdWrapper, this.adDetail});

  SeriesMatches.fromJson(Map<String, dynamic> json) {
    seriesAdWrapper = json['seriesAdWrapper'] != null
        ? new SeriesAdWrapper.fromJson(json['seriesAdWrapper'])
        : null;
    adDetail = json['adDetail'] != null
        ? new AdDetail.fromJson(json['adDetail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.seriesAdWrapper != null) {
      data['seriesAdWrapper'] = this.seriesAdWrapper!.toJson();
    }
    if (this.adDetail != null) {
      data['adDetail'] = this.adDetail!.toJson();
    }
    return data;
  }
}

class SeriesAdWrapper {
  int? seriesId;
  String? seriesName;
  List<Matches>? matches;

  SeriesAdWrapper({this.seriesId, this.seriesName, this.matches});

  SeriesAdWrapper.fromJson(Map<String, dynamic> json) {
    seriesId = json['seriesId'];
    seriesName = json['seriesName'];
    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add(new Matches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['seriesId'] = this.seriesId;
    data['seriesName'] = this.seriesName;
    if (this.matches != null) {
      data['matches'] = this.matches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Matches {
  MatchInfo? matchInfo;
  MatchScore? matchScore;

  Matches({this.matchInfo, this.matchScore});

  Matches.fromJson(Map<String, dynamic> json) {
    matchInfo = json['matchInfo'] != null
        ? new MatchInfo.fromJson(json['matchInfo'])
        : null;
    matchScore = json['matchScore'] != null
        ? new MatchScore.fromJson(json['matchScore'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.matchInfo != null) {
      data['matchInfo'] = this.matchInfo!.toJson();
    }
    if (this.matchScore != null) {
      data['matchScore'] = this.matchScore!.toJson();
    }
    return data;
  }
}

class MatchInfo {
  int? matchId;
  int? seriesId;
  String? seriesName;
  String? matchDesc;
  String? matchFormat;
  String? startDate;
  String? endDate;
  String? state;
  String? status;
  Team1? team1;
  Team1? team2;
  VenueInfo? venueInfo;
  int? currBatTeamId;
  String? seriesStartDt;
  String? seriesEndDt;
  bool? isTimeAnnounced;
  String? stateTitle;
  bool? isFantasyEnabled;

  MatchInfo(
      {this.matchId,
        this.seriesId,
        this.seriesName,
        this.matchDesc,
        this.matchFormat,
        this.startDate,
        this.endDate,
        this.state,
        this.status,
        this.team1,
        this.team2,
        this.venueInfo,
        this.currBatTeamId,
        this.seriesStartDt,
        this.seriesEndDt,
        this.isTimeAnnounced,
        this.stateTitle,
        this.isFantasyEnabled});

  MatchInfo.fromJson(Map<String, dynamic> json) {
    matchId = json['matchId'];
    seriesId = json['seriesId'];
    seriesName = json['seriesName'];
    matchDesc = json['matchDesc'];
    matchFormat = json['matchFormat'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    state = json['state'];
    status = json['status'];
    team1 = json['team1'] != null ? new Team1.fromJson(json['team1']) : null;
    team2 = json['team2'] != null ? new Team1.fromJson(json['team2']) : null;
    venueInfo = json['venueInfo'] != null
        ? new VenueInfo.fromJson(json['venueInfo'])
        : null;
    currBatTeamId = json['currBatTeamId'];
    seriesStartDt = json['seriesStartDt'];
    seriesEndDt = json['seriesEndDt'];
    isTimeAnnounced = json['isTimeAnnounced'];
    stateTitle = json['stateTitle'];
    isFantasyEnabled = json['isFantasyEnabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['matchId'] = this.matchId;
    data['seriesId'] = this.seriesId;
    data['seriesName'] = this.seriesName;
    data['matchDesc'] = this.matchDesc;
    data['matchFormat'] = this.matchFormat;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['state'] = this.state;
    data['status'] = this.status;
    if (this.team1 != null) {
      data['team1'] = this.team1!.toJson();
    }
    if (this.team2 != null) {
      data['team2'] = this.team2!.toJson();
    }
    if (this.venueInfo != null) {
      data['venueInfo'] = this.venueInfo!.toJson();
    }
    data['currBatTeamId'] = this.currBatTeamId;
    data['seriesStartDt'] = this.seriesStartDt;
    data['seriesEndDt'] = this.seriesEndDt;
    data['isTimeAnnounced'] = this.isTimeAnnounced;
    data['stateTitle'] = this.stateTitle;
    data['isFantasyEnabled'] = this.isFantasyEnabled;
    return data;
  }
}

class Team1 {
  int? teamId;
  String? teamName;
  String? teamSName;
  int? imageId;

  Team1({this.teamId, this.teamName, this.teamSName, this.imageId});

  Team1.fromJson(Map<String, dynamic> json) {
    teamId = json['teamId'];
    teamName = json['teamName'];
    teamSName = json['teamSName'];
    imageId = json['imageId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['teamId'] = this.teamId;
    data['teamName'] = this.teamName;
    data['teamSName'] = this.teamSName;
    data['imageId'] = this.imageId;
    return data;
  }
}

class VenueInfo {
  int? id;
  String? ground;
  String? city;
  String? timezone;
  String? latitude;
  String? longitude;

  VenueInfo(
      {this.id,
        this.ground,
        this.city,
        this.timezone,
        this.latitude,
        this.longitude});

  VenueInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ground = json['ground'];
    city = json['city'];
    timezone = json['timezone'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ground'] = this.ground;
    data['city'] = this.city;
    data['timezone'] = this.timezone;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}

class MatchScore {
  Team1Score? team1Score;
  Team2Score? team2Score;

  MatchScore({this.team1Score, this.team2Score});

  MatchScore.fromJson(Map<String, dynamic> json) {
    team1Score = json['team1Score'] != null
        ? new Team1Score.fromJson(json['team1Score'])
        : null;
    team2Score = json['team2Score'] != null
        ? new Team2Score.fromJson(json['team2Score'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.team1Score != null) {
      data['team1Score'] = this.team1Score!.toJson();
    }
    if (this.team2Score != null) {
      data['team2Score'] = this.team2Score!.toJson();
    }
    return data;
  }
}

class Team1Score {
  Inngs1? inngs1;
  Inngs1? inngs2;

  Team1Score({this.inngs1, this.inngs2});

  Team1Score.fromJson(Map<String, dynamic> json) {
    inngs1 =
    json['inngs1'] != null ? new Inngs1.fromJson(json['inngs1']) : null;
    inngs2 =
    json['inngs2'] != null ? new Inngs1.fromJson(json['inngs2']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.inngs1 != null) {
      data['inngs1'] = this.inngs1!.toJson();
    }
    if (this.inngs2 != null) {
      data['inngs2'] = this.inngs2!.toJson();
    }
    return data;
  }
}

class Inngs1 {
  int? inningsId;
  int? runs;
  int? wickets;
  double? overs;

  Inngs1({this.inningsId, this.runs, this.wickets, this.overs});

  Inngs1.fromJson(Map<String, dynamic> json) {
    inningsId = json['inningsId'];
    runs = json['runs'];
    wickets = json['wickets'];
    overs = json['overs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['inningsId'] = this.inningsId;
    data['runs'] = this.runs;
    data['wickets'] = this.wickets;
    data['overs'] = this.overs;
    return data;
  }
}

class Team2Score {
  Inngs1? inngs1;

  Team2Score({this.inngs1});

  Team2Score.fromJson(Map<String, dynamic> json) {
    inngs1 =
    json['inngs1'] != null ? new Inngs1.fromJson(json['inngs1']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.inngs1 != null) {
      data['inngs1'] = this.inngs1!.toJson();
    }
    return data;
  }
}

class AdDetail {
  String? name;
  String? layout;
  int? position;

  AdDetail({this.name, this.layout, this.position});

  AdDetail.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    layout = json['layout'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['layout'] = this.layout;
    data['position'] = this.position;
    return data;
  }
}

class Filters {
  List<String>? matchType;

  Filters({this.matchType});

  Filters.fromJson(Map<String, dynamic> json) {
    matchType = json['matchType'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['matchType'] = this.matchType;
    return data;
  }
}

class AppIndex {
  String? seoTitle;
  String? webURL;

  AppIndex({this.seoTitle, this.webURL});

  AppIndex.fromJson(Map<String, dynamic> json) {
    seoTitle = json['seoTitle'];
    webURL = json['webURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['seoTitle'] = this.seoTitle;
    data['webURL'] = this.webURL;
    return data;
  }
}
