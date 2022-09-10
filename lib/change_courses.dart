import 'package:flutter/cupertino.dart';

class ChangeCourses extends ChangeNotifier{
  String subject  = "";

  void ChangeSubject(String newsub){
    subject = newsub;

    notifyListeners();
  }
}