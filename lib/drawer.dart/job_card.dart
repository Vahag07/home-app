import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String tit;
  final String subtit;
  final String imagepath;

  JobCard({
    required this.tit,
    required this.subtit,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
      ),
      child: Stack(
        children: [
          Image.asset(imagepath),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 210, left: 30),
                child: Text(
                  tit,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 42),
                child: Text(
                  subtit,
                  style: const TextStyle(
                      color: Color(0xffD7D7D7),
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
