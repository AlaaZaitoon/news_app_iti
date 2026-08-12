import 'package:flutter/material.dart';
import 'package:new_iti/lastDay/models/news_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.newsModel});
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Image.network(newsModel.image)),
        const SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsModel.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                newsModel.desc,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(newsModel.date),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
