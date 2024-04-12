import 'package:flutter/material.dart';
import 'package:intern_form/Controller/GetX.dart';
import 'package:intern_form/Model/course.dart';
import 'package:get/get.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  course_data controller = Get.put(course_data());

  @override
  void initState() {
    super.initState();

    getData();
  }

  void getData() async {
    await controller.fetchData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(116, 85, 247, 1),
          body: Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: h * 0.029),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.menu,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Course Details',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.shopping_cart,
                          size: 25,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: h * 0.039),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 248, 250, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8),
                            Image.asset(
                              'assets/video.png',
                              width: w / 1.095,
                            ),
                            SizedBox(height: 20),
                            // Your existing content here...
                            Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    controller.course != null
                                        ? Text(
                                            controller.course!.data.title,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          )
                                        : Text(
                                            '',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                  ],
                                ) // Show loading indicator if course is not fetched yet
                                ),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 70,
                                    width: (w >= 500) ? h / 1.75 : h / 2.39,
                                    child: controller.course != null
                                        ? Text(
                                            controller.course!.data.subTitle,
                                            //overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.5,
                                                fontWeight: FontWeight.w400),
                                          )
                                        : Text(
                                            '',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.5,
                                                fontWeight: FontWeight.w400),
                                          ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '5.0',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 20),
                                  SizedBox(
                                    width: 0.5,
                                  ),
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 20),
                                  SizedBox(
                                    width: 0.5,
                                  ),
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 20),
                                  SizedBox(
                                    width: 0.5,
                                  ),
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 20),
                                  SizedBox(
                                    width: 0.5,
                                  ),
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 20),
                                  SizedBox(
                                    width: 0.5,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '9,551 students',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 12.5),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mentor',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 4.2,
                                  ),
                                  Text(
                                    'Astutosh',
                                    style: TextStyle(
                                        color: Color.fromRGBO(116, 85, 247, 1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 2.45,
                                  ),
                                  Text(
                                    'Pawar',
                                    style: TextStyle(
                                        color: Color.fromRGBO(116, 85, 247, 1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12.5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.today_outlined,
                                    color: Colors.black,
                                    size: 21,
                                  ),
                                  SizedBox(
                                    width: 1.7,
                                  ),
                                  Text(
                                    'Last Update',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  controller.course != null
                                      ? Text(
                                          controller.course!.data.updatedAt
                                              .toString()
                                              .substring(0, 10)
                                              .replaceAll('-', '/'),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        )
                                      : Text(
                                          '',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.language,
                                    size: 20,
                                    color: Color.fromRGBO(102, 102, 102, 1),
                                  ),
                                  SizedBox(
                                    width: 2.2,
                                  ),
                                  Text(
                                    'English',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  controller.course != null
                                      ? Text(
                                          '\$ ${controller.course!.data.price}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w600),
                                        )
                                      : Text(
                                          '',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 21,
                            ),
                            Container(
                              height: 50,
                              width: w / 1.095,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(116, 85, 247, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  'Buy now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 50,
                                  width: w / 2.3,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 1,
                                        color: Color.fromRGBO(116, 85, 247, 1),
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      'Add to cart',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(116, 85, 247, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: w / 2.3,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: Color.fromRGBO(116, 85, 247, 1),
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      'Add to wishlist',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(116, 85, 247, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'What you\'ll learn',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListView.builder(
                                shrinkWrap: true,
                                itemCount: controller
                                    .course!.data.learningTopic.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 9,
                                          color:
                                              Color.fromRGBO(116, 85, 247, 1),
                                        ),
                                        SizedBox(width: 6.5),
                                        Expanded(
                                          child: Text(
                                            controller.course!.data
                                                .learningTopic[index],
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                            SizedBox(
                              height: 27,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Course Curriculam',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23,
                                        letterSpacing: 0.7,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount:
                                      controller.course!.data.sections.length ??
                                          0,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: EdgeInsets.only(bottom: 7.5),
                                      child: ExpansionTile(
                                          title: Text(
                                              'section ${controller.course!.data.sections[index].id} - ${controller.course!.data.sections[index].topic}'),
                                          children: controller.course!.data
                                              .sections[index].lessons
                                              .map((e) => ListTile(
                                                    leading: Icon(
                                                      Icons.play_arrow,
                                                      size: 21,
                                                      color: Color.fromRGBO(
                                                          102, 102, 102, 1),
                                                    ),
                                                    title: Text(
                                                      e.lectureTitle,
                                                      style: TextStyle(
                                                          color: Colors.black87,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ))
                                              .toList()),
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 50,
                              width: w / 1.097,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(247, 248, 250, 1),
                                  border: Border.all(
                                      width: 1,
                                      color: Color.fromRGBO(116, 85, 247, 1)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  ' 10 more sections',
                                  style: TextStyle(
                                      color: Color.fromRGBO(116, 85, 247, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(height: 17),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'This course includes',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23,
                                        letterSpacing: 0.7,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.video_collection,
                                    size: 24,
                                    color: Color.fromRGBO(116, 85, 247, 1),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '34.5 hours on demand video',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 0.7,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.file_copy_outlined,
                                    size: 24,
                                    color: Color.fromRGBO(116, 85, 247, 1),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'Support files',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 0.7,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.menu_book,
                                    size: 24,
                                    color: Color.fromRGBO(116, 85, 247, 1),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '10 article',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        letterSpacing: 0.7,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.loop,
                                    size: 24,
                                    color: Color.fromRGBO(116, 85, 247, 1),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'Full lifetime access',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 0.7,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.phone_iphone,
                                    size: 24,
                                    color: Color.fromRGBO(116, 85, 247, 1),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'Access on mobile,laptop and TV',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 0.7,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.my_library_books,
                                    size: 24,
                                    color: Color.fromRGBO(116, 85, 247, 1),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'Completion of Certificate',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 0.7,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 29,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Requirement',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23,
                                        letterSpacing: 0.7,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 9,
                                    color: Color.fromRGBO(116, 85, 247, 1),
                                  ),
                                  SizedBox(width: 6.5),
                                  Expanded(
                                    child: Text(
                                      controller.course!.data.requirements ??
                                          "",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Describtion',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23,
                                        letterSpacing: 0.7,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                               Expanded(child:    Container(
                                    //height: 100,
                                    //width: (w < 500) ? h / 1.60 : h / 2.3,
                                    child: Text(
                                      controller.course!.data.description ?? "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      softWrap: true,
                                    
                                    ),
                                  ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
