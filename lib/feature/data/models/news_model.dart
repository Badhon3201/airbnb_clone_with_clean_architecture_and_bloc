// // To parse this JSON data, do
// //
// //     final topHeadlinesNewsResponseModel = topHeadlinesNewsResponseModelFromJson(jsonString);
//
// import 'dart:convert';
//
// TopHeadlinesNewsResponseModel topHeadlinesNewsResponseModelFromJson(String str) => TopHeadlinesNewsResponseModel.fromJson(json.decode(str));
//
// String topHeadlinesNewsResponseModelToJson(TopHeadlinesNewsResponseModel data) => json.encode(data.toJson());
//
// class TopHeadlinesNewsResponseModel {
//   String? status;
//   String? message;
//   int? totalResults;
//   List<Article>? articles;
//
//   TopHeadlinesNewsResponseModel({
//     this.status,
//     this.message,
//     this.totalResults,
//     this.articles,
//   });
//
//   factory TopHeadlinesNewsResponseModel.fromJson(Map<String, dynamic> json) => TopHeadlinesNewsResponseModel(
//     status: json["status"],
//     message: json["message"],
//     totalResults: json["totalResults"],
//     articles: json["articles"] == null ? [] : List<Article>.from(json["articles"]!.map((x) => Article.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "status": status,
//     "message": message,
//     "totalResults": totalResults,
//     "articles": articles == null ? [] : List<dynamic>.from(articles!.map((x) => x.toJson())),
//   };
// }
//
// class Article {
//   Source? source;
//   String? author;
//   String? title;
//   String? description;
//   String? url;
//   String? urlToImage;
//   DateTime? publishedAt;
//   String? content;
//
//   Article({
//     this.source,
//     this.author,
//     this.title,
//     this.description,
//     this.url,
//     this.urlToImage,
//     this.publishedAt,
//     this.content,
//   });
//
//   factory Article.fromJson(Map<String, dynamic> json) => Article(
//     source: json["source"] == null ? null : Source.fromJson(json["source"]),
//     author: json["author"],
//     title: json["title"],
//     description: json["description"],
//     url: json["url"],
//     urlToImage: json["urlToImage"],
//     publishedAt: json["publishedAt"] == null ? null : DateTime.parse(json["publishedAt"]),
//     content: json["content"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "source": source?.toJson(),
//     "author": author,
//     "title": title,
//     "description": description,
//     "url": url,
//     "urlToImage": urlToImage,
//     "publishedAt": publishedAt?.toIso8601String(),
//     "content": content,
//   };
// }
//
// class Source {
//   String? id;
//   String? name;
//
//   Source({
//     this.id,
//     this.name,
//   });
//
//   factory Source.fromJson(Map<String, dynamic> json) => Source(
//     id: json["id"],
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//   };
// }
