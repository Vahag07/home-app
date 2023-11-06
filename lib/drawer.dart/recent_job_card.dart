import 'package:flutter/material.dart';

class RecenrJobCard extends StatelessWidget {
  final String name;
  final String subname;
  final int bedroom;
  final int bathroom;
  final String imagepath1;

  RecenrJobCard({
    required this.name,
    required this.subname,
    required this.bathroom,
    required this.bedroom,
    required this.imagepath1
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 8),
      child: Container(
        width: 400,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: 65,
                height: 65,
                child: Image.asset(imagepath1),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    name,
                    style:const TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    subname,
                    style: const TextStyle(
                        color: Color(0xff0A8ED9),
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Row(
                    children: [
                     const Icon(
                        Icons.bed_rounded,
                        color: Color(0xff858585),
                        size: 20,
                      ),
                      Text(
                        "    bathroom ${bathroom}     ",
                        style: const TextStyle(
                            color: Color(0xff858585),
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400),
                      ),
                      const Icon(
                        Icons.bathtub_rounded,
                        color: Color(0xff858585),
                        size: 20,
                      ),
                      
                      Text(
                        "   bedroom ${bedroom}",
                        style: const TextStyle(
                            color: Color(0xff858585),
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
