// To parse this JSON data, do
//
//     final fetchPokeApi = fetchPokeApiFromJson(jsonString);

import 'dart:convert';

FetchPokeApi fetchPokeApiFromJson(String str) => FetchPokeApi.fromJson(json.decode(str));

String fetchPokeApiToJson(FetchPokeApi data) => json.encode(data.toJson());

class FetchPokeApi {
    int count;
    String next;
    dynamic previous;
    List<Result> results;

    FetchPokeApi({
        required this.count,
        required this.next,
        this.previous,
        required this.results,
    });

    factory FetchPokeApi.fromJson(Map<String, dynamic> json) => FetchPokeApi(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class Result {
    String name;
    String url;

    Result({
        required this.name,
        required this.url,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
}
