// To parse this JSON data, do
//
//     final restaurant = restaurantFromJson(jsonString);

import 'dart:convert';
import 'package:w4d_test/utils/double_convert.dart';

class Restaurant {
  String id;
  String name;
  String imageUrl;
  String phone;
  String displayPhone;
  int reviewCount;
  double rating;
  bool isClosed;
  String url;
  Location location;
  Coordinates coordinates;
  List<String> categories;
  List<String> photos;
  String price;
  List<Hour> hours;

  Restaurant({
    this.id,
    this.name,
    this.imageUrl,
    this.phone,
    this.displayPhone,
    this.reviewCount,
    this.rating,
    this.isClosed,
    this.url,
    this.location,
    this.coordinates,
    this.categories,
    this.photos,
    this.price,
    this.hours,
  });

  factory Restaurant.fromRawJson(String str) => Restaurant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Restaurant.fromJson(Map<String, dynamic> json) => new Restaurant(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    imageUrl: json["image_url"] == null ? null : json["image_url"],
    phone: json["phone"] == null ? null : json["phone"],
    displayPhone: json["display_phone"] == null ? null : json["display_phone"],
    reviewCount: json["review_count"] == null ? null : json["review_count"],
    rating: json["rating"] == null ? null : Convert.dynamicToDouble(json["rating"]),
    isClosed: json["is_closed"] == null ? null : json["is_closed"],
    url: json["url"] == null ? null : json["url"],
    location: json["location"] == null ? null : Location.fromJson(json["location"]),
    coordinates: json["coordinates"] == null ? null : Coordinates.fromJson(json["coordinates"]),
    categories: json["categories"] == null ? null : new List<String>.from(json["categories"].map((x) => x)),
    photos: json["photos"] == null ? null : new List<String>.from(json["photos"].map((x) => x)),
    price: json["price"] == null ? null : json["price"],
    hours: json["hours"] == null ? null : new List<Hour>.from(json["hours"].map((x) => Hour.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "image_url": imageUrl == null ? null : imageUrl,
    "phone": phone == null ? null : phone,
    "display_phone": displayPhone == null ? null : displayPhone,
    "review_count": reviewCount == null ? null : reviewCount,
    "rating": rating == null ? null : rating,
    "is_closed": isClosed == null ? null : isClosed,
    "url": url == null ? null : url,
    "location": location == null ? null : location.toJson(),
    "coordinates": coordinates == null ? null : coordinates.toJson(),
    "categories": categories == null ? null : new List<dynamic>.from(categories.map((x) => x)),
    "photos": photos == null ? null : new List<dynamic>.from(photos.map((x) => x)),
    "price": price == null ? null : price,
    "hours": hours == null ? null : new List<dynamic>.from(hours.map((x) => x.toJson())),
  };
}

class Coordinates {
  double latitude;
  double longitude;

  Coordinates({
    this.latitude,
    this.longitude,
  });

  factory Coordinates.fromRawJson(String str) => Coordinates.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Coordinates.fromJson(Map<String, dynamic> json) => new Coordinates(
    latitude: json["latitude"] == null ? null : Convert.dynamicToDouble(json["latitude"]),
    longitude: json["longitude"] == null ? null : Convert.dynamicToDouble(json["longitude"]),
  );

  Map<String, dynamic> toJson() => {
    "latitude": latitude == null ? null : latitude,
    "longitude": longitude == null ? null : longitude,
  };
}

class Hour {
  List<Open> open;
  String hoursType;

  Hour({
    this.open,
    this.hoursType,
  });

  factory Hour.fromRawJson(String str) => Hour.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Hour.fromJson(Map<String, dynamic> json) => new Hour(
    open: json["open"] == null ? null : new List<Open>.from(json["open"].map((x) => Open.fromJson(x))),
    hoursType: json["hours_type"] == null ? null : json["hours_type"],
  );

  Map<String, dynamic> toJson() => {
    "open": open == null ? null : new List<dynamic>.from(open.map((x) => x.toJson())),
    "hours_type": hoursType == null ? null : hoursType,
  };
}

class Open {
  bool isOvernight;
  String start;
  String end;
  int day;

  Open({
    this.isOvernight,
    this.start,
    this.end,
    this.day,
  });

  factory Open.fromRawJson(String str) => Open.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Open.fromJson(Map<String, dynamic> json) => new Open(
    isOvernight: json["is_overnight"] == null ? null : json["is_overnight"],
    start: json["start"] == null ? null : json["start"],
    end: json["end"] == null ? null : json["end"],
    day: json["day"] == null ? null : json["day"],
  );

  Map<String, dynamic> toJson() => {
    "is_overnight": isOvernight == null ? null : isOvernight,
    "start": start == null ? null : start,
    "end": end == null ? null : end,
    "day": day == null ? null : day,
  };
}

class Location {
  String address1;
  String address2;
  String address3;
  String city;
  String zipCode;
  String country;
  String state;
  List<String> displayAddress;
  String crossStreets;

  Location({
    this.address1,
    this.address2,
    this.address3,
    this.city,
    this.zipCode,
    this.country,
    this.state,
    this.displayAddress,
    this.crossStreets,
  });

  factory Location.fromRawJson(String str) => Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => new Location(
    address1: json["address1"] == null ? null : json["address1"],
    address2: json["address2"] == null ? null : json["address2"],
    address3: json["address3"] == null ? null : json["address3"],
    city: json["city"] == null ? null : json["city"],
    zipCode: json["zip_code"] == null ? null : json["zip_code"],
    country: json["country"] == null ? null : json["country"],
    state: json["state"] == null ? null : json["state"],
    displayAddress: json["display_address"] == null ? null : new List<String>.from(json["display_address"].map((x) => x)),
    crossStreets: json["cross_streets"] == null ? null : json["cross_streets"],
  );

  Map<String, dynamic> toJson() => {
    "address1": address1 == null ? null : address1,
    "address2": address2 == null ? null : address2,
    "address3": address3 == null ? null : address3,
    "city": city == null ? null : city,
    "zip_code": zipCode == null ? null : zipCode,
    "country": country == null ? null : country,
    "state": state == null ? null : state,
    "display_address": displayAddress == null ? null : new List<dynamic>.from(displayAddress.map((x) => x)),
    "cross_streets": crossStreets == null ? null : crossStreets,
  };
}
