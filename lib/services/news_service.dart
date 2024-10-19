

import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

    Future<List<ArticleModel>> getNews()async{
    var response= await dio.get(
      'https://newsapi.org/v2/top-headlines?apiKey=6f76fc5bd7374f1abf315e6b4e0d8617&country=us&category=general');

      response.data;
      Map<String,dynamic> jsonData=response.data;

      List<dynamic> articles=jsonData['articles'];

      List<ArticleModel>articlesList=[];

      for (var article in articles) {
        ArticleModel articleModel=
        ArticleModel(
          image: article['urlToImage'], 
          title:article['title'], 
          subTitle:article['description']);
          articlesList.add(articleModel);
      }
      return articlesList;


      // List<Map<String,dynamic>> articles=
      // jsonData['articles']as List<Map<String,dynamic>>;
      
  }
}







// void getGeneralNews() async {
//   final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=6f76fc5bd7374f1abf315e6b4e0d8617');
//   print(response);
// }

// void getSportsNews() async {
//   final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=6f76fc5bd7374f1abf315e6b4e0d8617');
//   print(response);
// }