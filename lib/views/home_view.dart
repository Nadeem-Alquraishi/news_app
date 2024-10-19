import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Movie',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Now',
              style: TextStyle(color: Color.fromARGB(255, 142, 83, 148)),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // const SliverToBoxAdapter(
            //   child: CategoriesListView(),
            // ),
            // const SliverToBoxAdapter(child: CategoriesListView()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListView(),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 30,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
