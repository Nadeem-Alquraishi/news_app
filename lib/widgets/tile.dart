// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app/models/list_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.list,
  });

  final ListModel list;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image: AssetImage(list.image),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          list.post,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          list.description,
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 10),
        )
      ],
    );
  }
}
