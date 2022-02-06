import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/ui/startpage.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(350, 800),
      builder: () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'E-Commerce',
          home: Startwidget(),
        );
      },
    );
  }
}
