import 'package:flutter/material.dart';
import 'package:flutter_design/styles.dart';

class ForYouCard extends StatelessWidget {
  final Color color;
  final String title;
  final String image;
  final String teacher;
  final String rating;
  const ForYouCard({Key key, @required this.color, this.title, this.image, this.teacher, this.rating}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2),spreadRadius: 1,blurRadius: 8)
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 64,
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(36),
                      border: Border.all(width: 3.0,color: Colors.white)
                  ),
                ),
                SizedBox(width: 8,),
                Flexible(child: Text(teacher,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),))
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                        size: 20,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        rating,
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ],
                  ),

                  Text(
                    title,
                    style: subTitleTextStyle,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
