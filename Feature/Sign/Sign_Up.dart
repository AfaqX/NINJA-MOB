import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Core/Common_Widget/Custom_Text.dart';
import '../../Core/Common_Widget/Image_Button.dart';
import '../../Core/Common_Widget/custom-button.dart';
import '../../Core/Common_Widget/custom_textfield.dart';
import '../../Core/Helper/Color.dart';
import '../../Core/Helper/Common_Var.dart';
import '../../Core/Routes/routesName.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  AppColor appColor = AppColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.mainColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Column(children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20.h),
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: appColor.buttonColor,
                  child: Center(
                      child: Icon(
                    Icons.arrow_back_ios_new,
                    color: appColor.white,
                  )),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          CustomText(
            name: "Create Account",
            size: 30.sp,
            color: appColor.black,
          ),
          fixHeight,
          CustomText(
            name: "Let's Create Account Togather",
            size: 16.sp,
            color: appColor.white,
          ),
          Height,
          Height,
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 25.w),
            child: CustomText(
              name: "Your Name",
              size: 18.sp,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          fixHeight,
          CustomTextfield(
            hintext: "Name",
          ),
          Height,
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 25.w),
            child: CustomText(
              name: "Email Address",
              size: 18.sp,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          fixHeight,
          CustomTextfield(
            hintext: "Email Address",
          ),
          fixHeight,
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 25.w),
            child: CustomText(
              name: "Password",
              size: 18.sp,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          fixHeight,
          CustomTextfield(
            hintext: "Password",
            passicon: Icon(Icons.remove_red_eye_outlined),
          ),
          Height,
          fixHeight,
          Height,
          SizedBox(
            height: 40.h,
            width: 270.w,
            child: CustomButton(
              buttonname: "Sign Up",
              color: appColor.buttonColor,
              textcolor: appColor.white,
              textsize: 17.sp,
              onPressed: () {},
            ),
          ),
          Height,
          SizedBox(
            height: 40.h,
            width: 270.w,
            child: imageButton(
              widget: Image.asset(
                'images/google.png',
                scale: 3,
              ),
              buttonname: "Sign In with Google",
              colors: appColor.white,
              color: appColor.buttonColor,
              textsize: 17.sp,
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomText(
                  name: "Already Have a Account?",
                  size: 16.sp,
                  color: appColor.white),
              InkWell(
                onTap: (() {
                  Navigator.pushNamed(context, RoutesName.SingIN);
                }),
                child: CustomText(
                    name: "\tSign In",
                    size: 16.sp,
                    fontweight: FontWeight.bold,
                    color: appColor.buttonColor),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
