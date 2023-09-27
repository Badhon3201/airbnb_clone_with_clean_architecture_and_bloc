// To parse this JSON data, do
//
//     final filterDataResponseModel = filterDataResponseModelFromJson(jsonString);

import 'dart:convert';

FilterDataResponseModel filterDataResponseModelFromJson(String str) => FilterDataResponseModel.fromJson(json.decode(str));

String filterDataResponseModelToJson(FilterDataResponseModel data) => json.encode(data.toJson());

class FilterDataResponseModel {
  bool? status;
  String? message;
  Data? data;

  FilterDataResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory FilterDataResponseModel.fromJson(Map<String, dynamic> json) => FilterDataResponseModel(
    status: json["status"],
    message: json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data?.toJson(),
  };
}

class Data {
  int? avgPrice;
  List<TypeOfPlace>? typeOfPlace;
  List<RoomsAndBed>? roomsAndBeds;
  List<PropertyType>? propertyType;

  Data({
    this.avgPrice,
    this.typeOfPlace,
    this.roomsAndBeds,
    this.propertyType,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    avgPrice: json["avg_price"],
    typeOfPlace: json["type_of_place"] == null ? [] : List<TypeOfPlace>.from(json["type_of_place"]!.map((x) => TypeOfPlace.fromJson(x))),
    roomsAndBeds: json["rooms_and_beds"] == null ? [] : List<RoomsAndBed>.from(json["rooms_and_beds"]!.map((x) => RoomsAndBed.fromJson(x))),
    propertyType: json["property_type"] == null ? [] : List<PropertyType>.from(json["property_type"]!.map((x) => PropertyType.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "avg_price": avgPrice,
    "type_of_place": typeOfPlace == null ? [] : List<dynamic>.from(typeOfPlace!.map((x) => x.toJson())),
    "rooms_and_beds": roomsAndBeds == null ? [] : List<dynamic>.from(roomsAndBeds!.map((x) => x.toJson())),
    "property_type": propertyType == null ? [] : List<dynamic>.from(propertyType!.map((x) => x.toJson())),
  };
}

class PropertyType {
  int? id;
  String? name;
  String? icon;

  PropertyType({
    this.id,
    this.name,
    this.icon,
  });

  factory PropertyType.fromJson(Map<String, dynamic> json) => PropertyType(
    id: json["id"],
    name: json["name"],
    icon: json["icon"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "icon": icon,
  };
}

class RoomsAndBed {
  String? name;
  List<String>? data;

  RoomsAndBed({
    this.name,
    this.data,
  });

  factory RoomsAndBed.fromJson(Map<String, dynamic> json) => RoomsAndBed(
    name: json["name"],
    data: json["data"] == null ? [] : List<String>.from(json["data"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
  };
}

class TypeOfPlace {
  String? title;
  String? subtitle;
  bool? check;

  TypeOfPlace({
    this.title,
    this.subtitle,
    this.check,
  });

  factory TypeOfPlace.fromJson(Map<String, dynamic> json) => TypeOfPlace(
    title: json["title"],
    subtitle: json["subtitle"],
    check: json["check"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "subtitle": subtitle,
    "check": check,
  };
}
