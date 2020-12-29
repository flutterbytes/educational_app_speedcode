import 'package:flutter/material.dart';
import 'package:flutter_design/components/course_card.dart';
import 'package:flutter_design/components/for_you_card.dart';
import 'package:flutter_design/constants.dart';
import 'package:flutter_design/details_page.dart';
import 'package:flutter_design/styles.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: [
            Container(
              height: 128,
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 32,
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://unsplash.com/photos/Y7C7F26fzZM/download?force=true&w=640"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(36),
                        border: Border.all(width: 2.0,color: Colors.white)
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Davis",
                        style: nameTextStyle,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Learning is easier and faster with us.",
                        style: subTextStyle,
                      ),
                    ],
                  )
                ],
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
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(top: 32, left: 32),
                        child: Text(
                          "Top Courses",
                          style: titleTextStyle,
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 232,
                        margin: EdgeInsets.only(top: 16),
                        child: PageView(
                          controller: PageController(viewportFraction: 0.8,initialPage: 2),
                          children:topCoursesList.map((e) {
                            return GestureDetector(
                              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailsPage(val: e,))),
                              child: CourseCard(
                                color: e["color"],
                                teacher: e["teacher"],
                                rating: e["rating"],
                                title: e["title"],
                                image: e["image"],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(top: 32, left: 32),
                        child: Text(
                          "For You",
                          style: titleTextStyle,
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      sliver: SliverGrid.count(
                        mainAxisSpacing: 24,
                        crossAxisSpacing: 16,
                        childAspectRatio: .95,
                        crossAxisCount: 2,
                        children: forYouList.map((e) {
                          return ForYouCard(
                            color: e["color"],
                            teacher: e["teacher"],
                            rating: e["rating"],
                            title: e["title"],
                            image: e["image"],
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
