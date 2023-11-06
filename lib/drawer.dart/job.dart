import 'package:flutter/material.dart';

class Job extends StatefulWidget {
  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 17),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("lib/assets/job.png"),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 230, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dreamsville House",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          "Jl Sultan Iskandar Muda Jakarta selatan",
                          style: TextStyle(
                              color: Color(0xffD4D4D4),
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.bedroom_parent,
                              color: Colors.white,
                            ),
                            Text(
                              "6 Bedroom",
                              style: TextStyle(
                                  color: Color(0xffD4D4D4),
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Icon(Icons.bathtub_rounded,
                                  color: Colors.white),
                            ),
                            Text(
                              "4 Bathroom",
                              style: TextStyle(
                                  color: Color(0xffD4D4D4),
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 21, left: 21),
              child: Text(
                "Description",
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 21, left: 21),
              child: Text(
                "The Level house that has a modern design has a large pool\n and a garage that fits up four cars",
                style: TextStyle(
                    color: Color(0xff858585),
                    fontSize: 12,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade300,
                      backgroundImage: AssetImage("lib/assets/juice.png"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 21,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Garry Allen",
                          style: TextStyle(
                              fontSize: 17,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Owner",
                          style: TextStyle(
                              color: Color(0xff858585),
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: Icon(Icons.phone)),
                  ElevatedButton(onPressed: () {}, child: Icon(Icons.message))
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Text(
                "Gallery",
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Image.asset("lib/assets/galery.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Image.asset("lib/assets/galery.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Image.asset("lib/assets/galery.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Image.asset("lib/assets/galery.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child:  Text("Rent Now"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
