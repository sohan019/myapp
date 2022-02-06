import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/const/appcolor.dart';
import 'package:myapp/ui/loginpage.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.mycolor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 150.h,
              width: ScreenUtil().screenWidth,
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      "Registration",
                      style: TextStyle(fontSize: 22.sp, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28.r),
                    topRight: Radius.circular(28.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "Welcome To Registration",
                          style: TextStyle(
                            fontSize: 22.sp,
                            color: appcolor.mycolor,
                          ),
                        ),
                        Text(
                          "Glad to see you",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xFFBBBBBB),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 48.h,
                              width: 41.w,
                              decoration: BoxDecoration(
                                  color: appcolor.mycolor,
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Center(
                                child: Icon(
                                  Icons.email_outlined,
                                  color: Colors.white,
                                  size: 20.w,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter your email addes",
                                  hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xFF414041),
                                  ),
                                  labelText: "EMAIL",
                                  labelStyle: TextStyle(
                                    fontSize: 15.sp,
                                    color: appcolor.mycolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 48.h,
                              width: 41.w,
                              decoration: BoxDecoration(
                                  color: appcolor.mycolor,
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Center(
                                child: Icon(
                                  Icons.lock_outlined,
                                  color: Colors.white,
                                  size: 20.w,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Password must be 8 character",
                                  hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xFF414041),
                                  ),
                                  labelText: "PASSWORD",
                                  labelStyle: TextStyle(
                                    fontSize: 15.sp,
                                    color: appcolor.mycolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        SizedBox(
                          width: 1.sw,
                          height: 56.w,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: appcolor.mycolor,
                              elevation: 3,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Wrap(
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: appcolor.mycolor,
                              ),
                            ),
                            GestureDetector(
                              child: Text("Sign In",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: appcolor.mycolor,
                              ),),
                              onTap: (){
                                 Navigator.push(
                                  context,
                                   MaterialPageRoute(
                                     builder: (context) => Loginwidget()));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
