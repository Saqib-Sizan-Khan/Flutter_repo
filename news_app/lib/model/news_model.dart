class NewsModel {
  final String status;
  final int totalResults;
  final List<ArticleModel> articles;

  NewsModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    var articleList = json['articles'] as List;
    List<ArticleModel> articles = articleList
        .map((articleJson) => ArticleModel.fromJson(articleJson))
        .toList();

    return NewsModel(
      status: json['status'],
      totalResults: json['totalResults'],
      articles: articles,
    );
  }
}

class ArticleModel {
  final Map<String, dynamic> source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  ArticleModel({
    required this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      source: json['source'],
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}
