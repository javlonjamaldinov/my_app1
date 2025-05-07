import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomContainer4 extends StatelessWidget {
  final String text;

  final bool container;
  const CustomContainer4({
    super.key,
    required this.text,
    this.container = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            container
                ? Container(
                  height: 3.5.h,
                  width: 22.w,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(28, 255, 193, 7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.sp),
                    child: Row(
                      children: [
                        Image.asset('assets/images/coin.png', width: 6.5.w),
                        SizedBox(width: 1.5.w),
                        Text(
                          '120',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.1.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class CustomContainer5 extends StatelessWidget {
  final String text;
  final String text_coin;
  final String image;
  final String image_icon;
  final VoidCallback? onTap;


  const CustomContainer5({
    super.key,
    required this.text,
    required this.text_coin,
    required this.image,
    required this.image_icon,
    this.onTap, 
    
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.sp),
        child: Container(
          width: 39.w,
          padding: EdgeInsets.symmetric(vertical: 1.sp),
          decoration: BoxDecoration(
            color: const Color(0xFF5C2D12),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFF2D1609), width: 1.w),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(image, width: 12.w),
                    SizedBox(width: 10.sp),
                    // Text(coinText,),
                  ],
                ),
                SizedBox(height: 0.5.h),
                Text(
                  textAlign: TextAlign.center,
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.8.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 27.sp),
                  child: Row(
                    children: [
                      Image.asset(image_icon, width: 6.w),
                      SizedBox(width: 1.w),
                      Text(
                        text_coin,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.1.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
