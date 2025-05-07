import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_container.dart';
import 'package:flutter_application_1/src/components/custom_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgrounImage: 'assets/images/splash_bac.png',
      backgrounImageHave: true,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 22.sp,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Row(
                    children: [
                      Container(
                        height: 3.5.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(131, 0, 0, 0),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.sp),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/reklama.png',
                                width: 7.w,
                              ),
                              SizedBox(width: 1.w),
                              Text(
                                '+10',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.1.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 3.5.h,
                        width: 22.w,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(131, 0, 0, 0),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.sp),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/coin.png',
                                width: 6.5.w,
                              ),
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
                      ),
                      SizedBox(width: 1.w),
                      Image.asset(
                        'assets/images/add_container.png',
                        width: 13.w,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 69.sp),
                  child: const CustomContainer(text: '6/10'),
                ),
                SizedBox(height: 2.5.h),
                const CustomContainer(text: 'continue'),
                Padding(
                  padding: EdgeInsets.only(top: 52.sp),
                  child: const Divider(color: Colors.white),
                ),
              ],
            ),
            Positioned(
              left: 47.sp,
              top: 53.sp,
              child: Image.asset('assets/images/cook.png', width: 40.w),
            ),
            Positioned(
              top: 38.sp,
              right: 43.sp,
              child: SizedBox(
                width: 45.w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/images/chat.png', width: 45.w),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.sp),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Great, you \nplayed well.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.5.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
