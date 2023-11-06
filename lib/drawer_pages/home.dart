import 'package:flutter/material.dart';
import 'package:home_page/drawer.dart/job.dart';
import 'package:home_page/drawer.dart/job_card.dart';
import 'package:home_page/drawer.dart/recent_job_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var items = ["Home", "Apartment", "Hotel", "Villa", "Hotel", "Motel"];

  final List homes = [
    ["Dreamsvile House", "Jl Sultan Iskandar Muda","lib/assets/home_image.png"],
    ["Ascot House", "Jl Cliandak Iskandar Muda","lib/assets/home_image.png"],
    ["Comfort House", "Jl Sultan Tadey Muda","lib/assets/home_image.png"]
  ];

  final List home = [
    ["Orchad House", "Rp 2.500.000.000  / Year", 6, 4,"lib/assets/galery.png"],
    ["The Hollies House", "Rp 2.000.000.000 / Year,", 5, 2,"lib/assets/galery.png"],
    ["Orchad House", "Rp 2.500.000.000  / Year", 6, 4,"lib/assets/galery.png"],
    ["The Hollies House", "Rp 2.000.000.000 / Year,", 5, 2,"lib/assets/galery.png"]
  ];



  final Color _textColor = const Color(0xff858585);
  final Color _containerColor = const Color(0xffF7F7F7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 298,
                child: Padding(
                  padding: const EdgeInsets.only(left: 21.38, top: 25.66),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search adress,or near you',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.69),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.55, top: 25.66),
                child: Container(
                  width: 61.31,
                  height: 61.31,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(10.69),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_list),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 21.38, left: 11),
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 30,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 17.1),
                      decoration: BoxDecoration(
                        color: _containerColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          items[index],
                          style: TextStyle(
                              color: _textColor,
                              fontSize: 12.828,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 34.21, left: 21.38, right: 20.52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Near from you",
                  style: TextStyle(
                      fontSize: 17.103,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "See more",
                  style: TextStyle(
                    color: _textColor,
                    fontSize: 12.828,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 290,
            child: ListView.builder(
                itemCount: homes.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: JobCard(
                      tit: homes[index][0],
                      subtit: homes[index][1],
                      imagepath: homes[index][2],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Job()),
                      );
                    },
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(top: 34.21, left: 21.38, right: 20.52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Best for you",
                  style: TextStyle(
                      fontSize: 17.103,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "See more",
                  style: TextStyle(
                    color: _textColor,
                    fontSize: 12.828,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: home.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return RecenrJobCard(
                  name: home[index][0],
                  subname: home[index][1],
                  bathroom: home[index][2],
                  bedroom: home[index][3],
                  imagepath1: home[index][4],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
