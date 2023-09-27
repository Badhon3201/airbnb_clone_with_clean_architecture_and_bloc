import 'dart:convert';

HouseAndCatResponseModel houseAndCatResponseModelFromJson(String str) =>
    HouseAndCatResponseModel.fromJson(json.decode(str));

String houseAndCatResponseModelToJson(HouseAndCatResponseModel data) =>
    json.encode(data.toJson());

class HouseAndCatResponseModel {
  bool? status;
  String? message;
  List<Datum>? data;
  List<Category>? category;

  HouseAndCatResponseModel({
    this.status,
    this.message,
    this.data,
    this.category,
  });

  factory HouseAndCatResponseModel.fromJson(Map<String, dynamic> json) =>
      HouseAndCatResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        category: json["category"] == null
            ? []
            : List<Category>.from(
                json["category"]!.map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "category": category == null
            ? []
            : List<dynamic>.from(category!.map((x) => x.toJson())),
      };
}

class Category {
  int? id;
  String? name;
  String? icon;

  Category({
    this.id,
    this.name,
    this.icon,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
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

class Datum {
  int? id;
  int? catId;
  String? location;
  String? title;
  String? dateRange;
  int? price;
  double? review;
  List<String>? typeOfPlace;
  String? bedRoom;
  String? bed;
  String? bathroom;
  List<String>? propertyType;
  List<String>? imageSlider;

  Datum({
    this.id,
    this.catId,
    this.location,
    this.title,
    this.dateRange,
    this.price,
    this.review,
    this.typeOfPlace,
    this.bedRoom,
    this.bed,
    this.bathroom,
    this.propertyType,
    this.imageSlider,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        catId: json["cat_id"],
        location: json["location"],
        title: json["title"],
        dateRange: json["date_range"],
        price: json["price"],
        review: json["review"]?.toDouble(),
        typeOfPlace: json["type_of_place"] == null
            ? []
            : List<String>.from(json["type_of_place"]!.map((x) => x)),
        bedRoom: json["bed_room"],
        bed: json["bed"],
        bathroom: json["bathroom"],
        propertyType: json["property_type"] == null
            ? []
            : List<String>.from(json["property_type"]!.map((x) => x)),
        imageSlider: json["image_slider"] == null
            ? []
            : List<String>.from(json["image_slider"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cat_id": catId,
        "location": location,
        "title": title,
        "date_range": dateRange,
        "price": price,
        "review": review,
        "type_of_place": typeOfPlace == null
            ? []
            : List<dynamic>.from(typeOfPlace!.map((x) => x)),
        "bed_room": bedRoom,
        "bed": bed,
        "bathroom": bathroom,
        "property_type": propertyType == null
            ? []
            : List<dynamic>.from(propertyType!.map((x) => x)),
        "image_slider": imageSlider == null
            ? []
            : List<dynamic>.from(imageSlider!.map((x) => x)),
      };
}
