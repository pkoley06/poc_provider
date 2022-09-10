import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poc_provider/change_courses.dart';
import 'package:provider/provider.dart';


class MyCourses extends StatelessWidget {
  final String courses;
  const MyCourses({Key? key, required this.courses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Provider.of<ChangeCourses>(context, listen: false).ChangeSubject(courses);
      },
      child: Container(
        margin: EdgeInsets.only(top: 25, right: 20, left: 20),
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF5c67c1)
        ),
        child: Center(
          child: Text(
            courses,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
