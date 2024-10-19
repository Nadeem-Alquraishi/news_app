import 'package:flutter/material.dart';
import 'package:news_app/models/list_model.dart';
import 'package:news_app/widgets/tile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({
    super.key,
  });
  final List<ListModel> lists= [
    ListModel(
      image: 'assets/business.jpg', 
      post: "Post", 
      description: 'description'),

      ListModel(
      image: 'assets/entertainment.avif', 
      post: "Post", 
      description: 'description'),

      ListModel(
      image: 'assets/health.jpg', 
      post: "Post", 
      description: 'description'),

      ListModel(
      image: 'assets/science.avif', 
      post: "Post", 
      description: 'description'),

      ListModel(
      image: 'assets/technology.jpeg', 
      post: "Post", 
      description: 'description'),

      ListModel(
      image: 'assets/sports.jpg', 
      post: "Post", 
      description: 'description'),

      ListModel(
      image: 'assets/general.jpg', 
      post: "Post", 
      description: 'description'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
      childCount: lists.length,
              (context, index){
              return NewsTile(list: lists[index]);
            }));

    // return ListView.builder(
    //   shrinkWrap: true,
    //   physics: const BouncingScrollPhysics(),
    //   itemBuilder: (context,index){
    //     return NewsTile(list: lists[index]); 
    //   },);
  }
}