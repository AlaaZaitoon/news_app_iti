import 'package:flutter/material.dart';
import 'package:new_iti/lastDay/details_screen.dart';
import 'package:new_iti/lastDay/models/news_model.dart';
import 'package:new_iti/lastDay/search_item.dart';

class SearchResultScreen extends StatelessWidget {
  SearchResultScreen({super.key});

  final List<NewsModel> data = [
    NewsModel(
      date: 'June 13,2024',
      name: 'Rana Mohy',
      desc: 'Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScNKdfGxP5ZPfboG6OVU_Il9yaQy1OnRN979V3jF3XZFWHOetvcrwEBc0&s=10',
    ),
    NewsModel(
      date: 'June 12,2024',
      name: 'Rana Mohy',
      desc: 'Chhattisgarh Polls: Ex Cong MLA Blames TS Deo For Losing Power',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsocYV9bBIrERu_d1yiX4NdutOymUU_prrlB5XxTseUX5iR4HRv3Vudgpi&s=10',
    ),
    NewsModel(
      date: 'June 11,2024',
      name: 'Rana Mohy',
      desc: 'CM Announcement: Rajasthan BJP Chief on Delay in Govt Formation',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPl9B2V40KRUQVjymz9JArlX5xzvW05PwmrULH85ZqXeNH13gf5qDNYT_D&s=10',
    ),
    NewsModel(
      date: 'June 10,2024',
      name: 'Rana Mohy',
      desc:
          'CM Announcement LIVE: BJP Legislative Party Meeting for Chhattisgarh Tomorrow',
      image:
          'https://img.magnific.com/free-vector/breaking-news-broadcast-template_1308-180114.jpg?semt=ais_hybrid&w=740&q=80',
    ),
    NewsModel(
      date: 'June 09,2024',
      name: 'Rana Mohy',
      desc: 'CM Announcement LIVE: BJP Legislative Party Meeting for Chhattisgarh Tomorrow',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSknuGvEgRO-sr0fcRch4YO3gjcGmX6Hcfp7Q2OvjzFe-_QgRvyqmBkmg2y&s=10',
    ),
    NewsModel(
      date: 'June 08,2024',
      name: 'Rana Mohy',
      desc: 'CM Announcement LIVE: BJP Legislative Party Meeting for Chhattisgarh Tomorrow',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIhOP0i0BiHTeE3CovivXE4mqobNlKe99RlmX20V5ONsQeZ6JFpsLnMseJ&s=10',
    ),
    NewsModel(
      date: 'June 07,2024',
      name: 'Rana Mohy',
      desc: 'CM Announcement LIVE: BJP Legislative Party Meeting for Chhattisgarh Tomorrow',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuRgjX-x8DUutQK-htq8EvsNR0tet9JV0zTKhKq2PjJZ9pBFBh5SUen2II&s=10',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        leadingWidth: 45,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back_ios_rounded),
            ),
          ),
        ),
        title: Text(
          'Search Result ',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(height: 25),
        itemCount: data.length,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(newsModel: data[i]),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SearchItem(newsModel: data[i]),
            ),
          );
        },
      ),
    );
  }
}
