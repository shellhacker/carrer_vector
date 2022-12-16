class McqBaseModel {
  McqBaseModel({
    this.id,
    this.date,
    this.dateGmt,
    this.links,
  });

  int? id;
  DateTime? date;
  DateTime? dateGmt;

  Links? links;

  factory McqBaseModel.fromJson(Map<String, dynamic> json) => McqBaseModel(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        dateGmt: DateTime.parse(json["date_gmt"]),
        links: Links.fromJson(json["_links"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "_links": links!.toJson(),
      };
}

class Links {
  Links({
    this.wpTerm,
  });

  List<WpTerm>? wpTerm;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        wpTerm:
            List<WpTerm>.from(json["wp:term"].map((x) => WpTerm.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "wp:term": List<dynamic>.from(wpTerm!.map((x) => x.toJson())),
      };
}

class WpTerm {
  WpTerm({
    this.taxonomy,
    this.embeddable,
    this.href,
  });

  String? taxonomy;
  bool? embeddable;
  String? href;

  factory WpTerm.fromJson(Map<String, dynamic> json) => WpTerm(
        taxonomy: json["taxonomy"],
        embeddable: json["embeddable"],
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "taxonomy": taxonomy,
        "embeddable": embeddable,
        "href": href,
      };
}
