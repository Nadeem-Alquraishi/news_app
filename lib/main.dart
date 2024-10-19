import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/home_view.dart';

void main() async {
  NewsService(Dio()).getNews();
  runApp(const News_app());
}

// ignore: camel_case_types
class News_app extends StatelessWidget {
  const News_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
