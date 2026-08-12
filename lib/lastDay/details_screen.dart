import 'package:flutter/material.dart';
import 'package:new_iti/lastDay/models/news_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.newsModel});

  final NewsModel newsModel;

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
          child: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back_ios_rounded),
            ),
          ),
        ),
        title: const Text(
          'News Detail',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: Image.network(
                  newsModel.image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 200,
                    color: Colors.grey.shade300,
                    child: const Icon(Icons.image, size: 50, color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    newsModel.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),

                  ///====================================
                  const Icon(Icons.favorite_border_sharp),
                  const SizedBox(width: 4),
                  const Text(
                    '204',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                '8 min read . Updated: ${newsModel.date}',
                style: const TextStyle(
                  color: Color(0xff322933),
                  fontSize: 10.26,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                newsModel.desc,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Xiaomi India has denied exiting the offline market for smart TV sales. The rebuttal comes in response to a claim made by Super Plastronics Pvt Ltd chief executive officer, Avneet Singh Marwah, that Xiaomi had closed its offline television sales last year, apparently because it had ceased to serve as a viable business option.\n\nIn a statement shared with FE over email, a company spokesperson said that, "Xiaomi has a strong retail presence across multiple offline channels besides Mi stores and Mi Homes including multi-brand stores, Mi Preferred Partners as well as large format stores like Reliance, Vijay Sales, Poorvika, Sangeetha, etc," adding that brick-and-mortar channels have been contributing to 50 percent of its smart TV sales in the country.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
