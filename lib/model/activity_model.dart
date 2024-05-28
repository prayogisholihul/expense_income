import 'package:meta/meta.dart';
import 'dart:convert';

class ActivityModel {
  final String activity;
  final double availability;
  final Type type;
  final int participants;
  final double price;
  final Accessibility accessibility;
  final Duration duration;
  final bool kidFriendly;
  final String link;
  final String key;

  ActivityModel({
    required this.activity,
    required this.availability,
    required this.type,
    required this.participants,
    required this.price,
    required this.accessibility,
    required this.duration,
    required this.kidFriendly,
    required this.link,
    required this.key,
  });

  factory ActivityModel.fromRawJson(String str) => ActivityModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ActivityModel.fromJson(Map<String, dynamic> json) => ActivityModel(
    activity: json["activity"],
    availability: json["availability"]?.toDouble(),
    type: typeValues.map[json["type"]]!,
    participants: json["participants"],
    price: json["price"]?.toDouble(),
    accessibility: accessibilityValues.map[json["accessibility"]]!,
    duration: durationValues.map[json["duration"]]!,
    kidFriendly: json["kidFriendly"],
    link: json["link"],
    key: json["key"],
  );

  Map<String, dynamic> toJson() => {
    "activity": activity,
    "availability": availability,
    "type": typeValues.reverse[type],
    "participants": participants,
    "price": price,
    "accessibility": accessibilityValues.reverse[accessibility],
    "duration": durationValues.reverse[duration],
    "kidFriendly": kidFriendly,
    "link": link,
    "key": key,
  };
}

enum Accessibility {
  FEW_TO_NO_CHALLENGES,
  MINOR_CHALLENGES
}

final accessibilityValues = EnumValues({
  "Few to no challenges": Accessibility.FEW_TO_NO_CHALLENGES,
  "Minor challenges": Accessibility.MINOR_CHALLENGES
});

enum Duration {
  HOURS,
  MINUTES
}

final durationValues = EnumValues({
  "hours": Duration.HOURS,
  "minutes": Duration.MINUTES
});

enum Type {
  BUSYWORK
}

final typeValues = EnumValues({
  "busywork": Type.BUSYWORK
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
