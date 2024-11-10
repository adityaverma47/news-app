import 'dart:convert';
import 'package:daily_news/category_news.dart';
import 'package:daily_news/presentation/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart';
import '../../models/model_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  List<NewsQueryModel> newsModelList = <NewsQueryModel>[];
  List<NewsQueryModel> newsModelListCarousel = <NewsQueryModel>[];
  List<String> navBarItem = [
    "Top News",
    "India",
    "Sports",
    "Finance",
    "Health"
  ];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getNewsByQuery();
    getNewsOfIndia();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily News"),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: [
          Container(
            margin:const EdgeInsets.only(right: 8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
              child: const CircleAvatar(
                radius: 20,
                child: Icon(Icons.person),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if ((searchController.text).replaceAll(" ", "") == "") {
                        print("Blank search");
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Category(Query: searchController.text)));
                      }
                    },
                    child: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.blueAccent,
                      ),
                      margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      textInputAction: TextInputAction.search,
                      onSubmitted: (value) {
                        if (value == " ") {
                          print("Blank Search");
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Category(Query: value)));
                        }
                      },
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: "Search Health"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
                height: 50,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: navBarItem.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Category(Query: navBarItem[index])));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(navBarItem[index],
                                style: const TextStyle(
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      );
                    })),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: isLoading
                  ? const SizedBox(
                      height: 200,
                      child: SizedBox(
                          height: 200,
                          child: Center(child: CircularProgressIndicator())))
                  : CarouselSlider(
                      options: CarouselOptions(
                          height: 200, autoPlay: true, enlargeCenterPage: true),
                      items: newsModelListCarousel.map((instance) {
                        return Builder(builder: (BuildContext context) {
                          try {
                            return Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Stack(children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        instance.newsImg,
                                        fit: BoxFit.fitHeight,
                                        width: double.infinity,
                                      )),
                                  Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: LinearGradient(
                                                colors: [
                                                  Colors.black12.withOpacity(0),
                                                  Colors.black
                                                ],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter)),
                                        child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                child: Text(
                                                  instance.newsHead,
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))),
                                      )),
                                ]));
                          } catch (e) {
                            print(e);
                            return Container();
                          }
                        });
                      }).toList(),
                    ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 25, 0, 0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "LATEST NEWS ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ],
                  ),
                ),
                isLoading
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height - 500,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: newsModelList.length,
                        itemBuilder: (context, index) {
                          try {
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: InkWell(
                                onTap: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => NewsView(newsModelList[index])));
                                },
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    elevation: 1.0,
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.network(
                                              newsModelList[index].newsImg,
                                              fit: BoxFit.fitHeight,
                                              height: 230,
                                              width: double.infinity,
                                            )),
                                        Positioned(
                                            left: 0,
                                            right: 0,
                                            bottom: 0,
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    gradient: LinearGradient(
                                                        colors: [
                                                          Colors.black12
                                                              .withOpacity(0),
                                                          Colors.black
                                                        ],
                                                        begin:
                                                            Alignment.topCenter,
                                                        end: Alignment
                                                            .bottomCenter)),
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        15, 15, 10, 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      newsModelList[index]
                                                          .newsHead,
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      newsModelList[index]
                                                                  .newsDes
                                                                  .length >
                                                              50
                                                          ? "${newsModelList[index].newsDes.substring(0, 55)}...."
                                                          : newsModelList[index]
                                                              .newsDes,
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                )))
                                      ],
                                    )),
                              ),
                            );
                          } catch (e) {
                            print(e);
                            return Container();
                          }
                        }),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Category(Query: "Technology")));
                          },
                          child: const Text("SHOW MORE")),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> getNewsByQuery() async {
    Map element;
    int i = 0;
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=fde2b72a01bb413bb95c091f8de4abfd";
    Response response = await get(Uri.parse(url));
    Map data = jsonDecode(response.body);
    setState(() {
      for (element in data["articles"]) {
        try {
          i++;
          NewsQueryModel newsQueryModel = new NewsQueryModel();
          newsQueryModel = NewsQueryModel.fromMap(element);
          newsModelList.add(newsQueryModel);
          setState(() {
            isLoading = false;
          });

          if (i == 5) {
            break;
          }
        } catch (e) {
          print("Exception GetQuery: ${e.toString()}");
        }
        //     newsModelList.subList(0,5);   AAP KITNI IMAGES SHOW KARWAANA CHAHTE HO
      }
    });
  }

  Future<void> getNewsOfIndia() async {
    try {
      String url =
          "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=fde2b72a01bb413bb95c091f8de4abfd";
      Response response = await get(Uri.parse(url));
      Map data = jsonDecode(response.body);
      setState(() {
        data["articles"].forEach((element) {
          NewsQueryModel newsQueryModel = new NewsQueryModel();
          newsQueryModel = NewsQueryModel.fromMap(element);
          newsModelListCarousel.add(newsQueryModel);
          setState(() {
            isLoading = false;
          });
        });
      });
    } catch (e) {
      print("Exception GetIndia: ${e.toString()}");
    }
  }

  @override
  void dispose() {
    searchController.clear();
    super.dispose();
  }
}
