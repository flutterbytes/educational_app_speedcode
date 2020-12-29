import 'package:flutter/material.dart';
import 'package:flutter_design/styles.dart';

class DetailsPage extends StatelessWidget {
  final val;

  const DetailsPage({Key key, this.val}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: [
            Container(
              height: 88,
              padding: EdgeInsets.only(top: 16, left: 16),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 36,
                    ),
                    Text(
                      "Back",
                      style: TextStyle(color: Colors.grey[200], fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48),
                    )),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 32, left: 24, right: 24),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: val["color"],
                                    borderRadius: BorderRadius.circular(24),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://github.com/flutterbytes/flutter_glassmorphism/blob/master/up.png?raw=true",
                                      ),
                                      fit: BoxFit.cover
                                    )),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        val["title"],
                                        style: detailsTitleTextStyle,
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.red,
                                            size: 22,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "4.9",
                                            style: ratingTextStyle,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text(
                            "The Course Includes",
                            style: detailsSubTitleTextStyle,
                          ),
                        ),
                        Container(
                          height: 300,
                          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 24),
                          padding: EdgeInsets.symmetric(
                              vertical: 24, horizontal: 16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(56),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 16)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                    child: Center(
                                        child: Icon(
                                      Icons.videocam_outlined,
                                      color: Colors.white,
                                      size: 34,
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "12 Video Tutorials",
                                          style: courseStyle,
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: "250 min ",
                                              style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "of interesting lectures",
                                                  style: TextStyle(
                                                    color: Colors.grey[500],
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.cyan,
                                    ),
                                    child: Center(
                                        child: Icon(
                                      Icons.bookmark_border_rounded,
                                      color: Colors.white,
                                      size: 34,
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "7 Practical Tasks",
                                          style: courseStyle,
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: "3 Teachers ",
                                              style: TextStyle(
                                                  color: Colors.cyan,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                              children: [
                                                TextSpan(
                                                  text: "will check your work",
                                                  style: TextStyle(
                                                    color: Colors.grey[500],
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.pinkAccent,
                                    ),
                                    child: Center(
                                        child: Icon(
                                      Icons.folder_outlined,
                                      color: Colors.white,
                                      size: 34,
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "10 Templates for Design",
                                          style: courseStyle,
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: "500 MB ",
                                              style: TextStyle(
                                                color: Colors.pinkAccent,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: "of sketch files",
                                                  style: TextStyle(
                                                    color: Colors.grey[500],
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text(
                            "Teacher",
                            style: detailsSubTitleTextStyle,
                          ),
                        ),
                        Container(
                          height: 120,
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 24),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 16)
                              ]),
                          child: Row(
                            children: [
                              Hero(
                                tag:val["image"],
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage(val["image"]),
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    val["teacher"],
                                    style: courseStyle,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Designer",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_right_alt_rounded,
                                color: Colors.deepPurple,
                                size: 40,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                          height: 56,
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              "Start",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
