class TestEntity {
  List<TestValue> value;

  TestEntity({this.value});

  TestEntity.fromJson(Map<String, dynamic> json) {
    if (json['value'] != null) {
      value = new List<TestValue>();
      (json['value'] as List).forEach((v) {
        value.add(new TestValue.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.value != null) {
      data['value'] = this.value.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TestValue {
  bool allowComplimentaryTickets;
  int seatsAvailable;
  bool groupSessionsByAttribute;
  int screenNumber;
  List<Null> sessionAttributesNames;
  int sessionDisplayPriority;
  dynamic playThroughId;
  bool allowChildAdmits;
  var priceGroupCode;
  var cinemaOperatorCode;
  var cinemaId;
  var eventId;
  var screenName;
  var iD;
  var showtime;
  var sessionId;
  var scheduledFilmId;
  var salesChannels;
  bool allowTicketSales;
//  List<Null> conceptAttributesNames;
  var sessionBusinessDate;
  bool isAllocatedSeating;
  var screenNameAlt;
  List<Null> areaCategoryCodes;
  bool hasDynamicallyPricedTicketsAvailable;
  var formatCode;

  TestValue(
      {this.allowComplimentaryTickets,
      this.seatsAvailable,
      this.groupSessionsByAttribute,
      this.screenNumber,
      this.sessionAttributesNames,
      this.sessionDisplayPriority,
      this.playThroughId,
      this.allowChildAdmits,
      this.priceGroupCode,
      this.cinemaOperatorCode,
      this.cinemaId,
      this.eventId,
      this.screenName,
      this.iD,
      this.showtime,
      this.sessionId,
      this.scheduledFilmId,
      this.salesChannels,
      this.allowTicketSales,
//      this.conceptAttributesNames,
      this.sessionBusinessDate,
      this.isAllocatedSeating,
      this.screenNameAlt,
      this.areaCategoryCodes,
      this.hasDynamicallyPricedTicketsAvailable,
      this.formatCode});

  TestValue.fromJson(Map<String, dynamic> json) {
    allowComplimentaryTickets = json['AllowComplimentaryTickets'];
    seatsAvailable = json['SeatsAvailable'];
    groupSessionsByAttribute = json['GroupSessionsByAttribute'];
    screenNumber = json['ScreenNumber'];
    if (json['SessionAttributesNames'] != null) {
      sessionAttributesNames = new List<Null>();
    }
    sessionDisplayPriority = json['SessionDisplayPriority'];
    playThroughId = json['PlayThroughId'];
    allowChildAdmits = json['AllowChildAdmits'];
    priceGroupCode = json['PriceGroupCode'];
    cinemaOperatorCode = json['CinemaOperatorCode'];
    cinemaId = json['CinemaId'];
    eventId = json['EventId'];
    screenName = json['ScreenName'];
    iD = json['ID'];
    showtime = json['Showtime'];
    sessionId = json['SessionId'];
    scheduledFilmId = json['ScheduledFilmId'];
    salesChannels = json['SalesChannels'];
    allowTicketSales = json['AllowTicketSales'];
//    if (json['ConceptAttributesNames'] != null) {
//      conceptAttributesNames = new List<Null>();
//    }
    sessionBusinessDate = json['SessionBusinessDate'];
    isAllocatedSeating = json['IsAllocatedSeating'];
    screenNameAlt = json['ScreenNameAlt'];
    if (json['AreaCategoryCodes'] != null) {
      areaCategoryCodes = new List<Null>();
    }
    hasDynamicallyPricedTicketsAvailable =
        json['HasDynamicallyPricedTicketsAvailable'];
    formatCode = json['FormatCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AllowComplimentaryTickets'] = this.allowComplimentaryTickets;
    data['SeatsAvailable'] = this.seatsAvailable;
    data['GroupSessionsByAttribute'] = this.groupSessionsByAttribute;
    data['ScreenNumber'] = this.screenNumber;
    if (this.sessionAttributesNames != null) {
      data['SessionAttributesNames'] = [];
    }
    data['SessionDisplayPriority'] = this.sessionDisplayPriority;
    data['PlayThroughId'] = this.playThroughId;
    data['AllowChildAdmits'] = this.allowChildAdmits;
    data['PriceGroupCode'] = this.priceGroupCode;
    data['CinemaOperatorCode'] = this.cinemaOperatorCode;
    data['CinemaId'] = this.cinemaId;
    data['EventId'] = this.eventId;
    data['ScreenName'] = this.screenName;
    data['ID'] = this.iD;
    data['Showtime'] = this.showtime;
    data['SessionId'] = this.sessionId;
    data['ScheduledFilmId'] = this.scheduledFilmId;
    data['SalesChannels'] = this.salesChannels;
    data['AllowTicketSales'] = this.allowTicketSales;
//    if (this.conceptAttributesNames != null) {
//      data['ConceptAttributesNames'] = [];
//    }
    data['SessionBusinessDate'] = this.sessionBusinessDate;
    data['IsAllocatedSeating'] = this.isAllocatedSeating;
    data['ScreenNameAlt'] = this.screenNameAlt;
    if (this.areaCategoryCodes != null) {
      data['AreaCategoryCodes'] = [];
    }
    data['HasDynamicallyPricedTicketsAvailable'] =
        this.hasDynamicallyPricedTicketsAvailable;
    data['FormatCode'] = this.formatCode;
    return data;
  }
}
