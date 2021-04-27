class HomeModel {
  String status;
  int totalResults;
  List<ArticlesListBean> articles;

  HomeModel({this.status, this.totalResults, this.articles});

  HomeModel.fromJson(Map<String, dynamic> json) {    
    this.status = json['status'];
    this.totalResults = json['totalResults'];
    this.articles = (json['articles'] as List)!=null?(json['articles'] as List).map((i) => ArticlesListBean.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['totalResults'] = this.totalResults;
    data['articles'] = this.articles != null?this.articles.map((i) => i.toJson()).toList():null;
    return data;
  }

}

class ArticlesListBean {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;
  SourceBean source;

  ArticlesListBean({this.author, this.title, this.description, this.url, this.urlToImage, this.publishedAt, this.content, this.source});

  ArticlesListBean.fromJson(Map<String, dynamic> json) {    
    this.author = json['author'];
    this.title = json['title'];
    this.description = json['description'];
    this.url = json['url'];
    this.urlToImage = json['urlToImage'];
    this.publishedAt = json['publishedAt'];
    this.content = json['content'];
    this.source = json['source'] != null ? SourceBean.fromJson(json['source']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = this.author;
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    data['publishedAt'] = this.publishedAt;
    data['content'] = this.content;
    if (this.source != null) {
      data['source'] = this.source.toJson();
    }
    return data;
  }
}

class SourceBean {
  String id;
  String name;

  SourceBean({this.id, this.name});

  SourceBean.fromJson(Map<String, dynamic> json) {    
    this.id = json['id'];
    this.name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
