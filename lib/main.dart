import 'package:flutter/material.dart';
import 'package:poc_provider/change_courses.dart';
import 'package:poc_provider/my_courses.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_)=> ChangeCourses(),
      child: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70, right: 20, left: 20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF5c67c1)
              ),
              child: Center(
                child: Text(
                  "We are learning Flutter  ${Provider.of<ChangeCourses>(context).subject}",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            MyCourses(
              courses: "GetX",
            ),
            MyCourses(
              courses: "Bloc",
            ),
            MyCourses(
              courses: "Cubit",
            ),
          ],
        ),
      ),
    );
  }
}
