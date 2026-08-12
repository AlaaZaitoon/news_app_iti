import 'package:flutter/material.dart';
import 'package:new_iti/lastDay/details_screen.dart';
import 'package:new_iti/lastDay/models/news_model.dart';
import 'package:new_iti/lastDay/news_item.dart';
import 'package:new_iti/lastDay/search_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

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
        leadingWidth: 45,
        backgroundColor: Colors.grey.shade200,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.menu),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            },
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.search),
            ),
          ),
          const SizedBox(width: 12),
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.notifications_none),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Breaking News',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Show More',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2C57F0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Image.asset('assets/images/home1.png', height: 140),
            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFA500),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: const Text(
                      'All',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Text(
                      'Politic',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Text(
                      'Sport',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Text(
                      'Education',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'News For You',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Show More',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2C57F0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    const Divider(height: 25),
                itemCount: data.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(newsModel: data[i]),
                        ),
                      );
                    },
                    child: NewsItem(newsModel: data[i]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
