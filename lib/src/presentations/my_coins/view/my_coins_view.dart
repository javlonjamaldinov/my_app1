import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_scaffold.dart';
import 'package:flutter_application_1/src/presentations/shop/widget/custom_container4.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyCoinsView extends StatelessWidget {
  const MyCoinsView({super.key});

  @override
  Widget build(BuildContext context) {
    void showNotEnoughCoinsDialog(BuildContext context) {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder:
            (context) => Dialog(
              backgroundColor: Colors.transparent,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 18.h,
                      width: double.infinity,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'assets/images/show_dialog.png',
                            fit: BoxFit.fill,
                          ),
                          Center(
                            child: Stack(
                              children: [
                                Text(
                                  "Sorry you don't\nhave enough coins\nto buy this",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: 'ADLaM Display',
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFF7F1D5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5.sp,
                    right: 5.sp,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Image.asset(
                        'assets/images/clouse_icon_shop.png',
                        width: 10.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
      );
    }

    return CustomScaffold(
      backgroundColor: Color(0xFF1B2E04),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 7.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Container(
                height: 5.5.h,
                width: 23.w,
                decoration: BoxDecoration(
                  color: const Color(0xFF060606),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFFFDF7D5),
                  size: 23.sp,
                ),
              ),
            ),
            SizedBox(height: 1.5.h),
            CustomContainer4(text: 'HInts', container: true),
            SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomContainer5(
                    // coinText: "120",
                    text_coin: '120',
                    image_icon: 'assets/images/coin.png',
                    text: 'Get a skip to skip ads\nimmediately',
                    image: 'assets/images/coin.png',
                    onTap: () => showNotEnoughCoinsDialog(context),
                  ),
                  SizedBox(width: 5.w),
                  CustomContainer5(
                    //  coinText: "120",
                    text_coin: '120',
                    image_icon: 'assets/images/coin.png',
                    text: 'Skip one move without\nanswering',
                    image: 'assets/images/shop_clouse.png',
                    onTap: () => showNotEnoughCoinsDialog(context),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            CustomContainer4(text: 'Times'),
            SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomContainer5(
                    //  coinText: "120",
                    text_coin: '120',
                    image_icon: 'assets/images/coin.png',
                    text: 'Get extra time\n  ',
                    image: 'assets/images/shop_watch.png',
                    onTap: () => showNotEnoughCoinsDialog(context),
                  ),
                  SizedBox(width: 5.w),
                  CustomContainer5(
                    //  coinText: "120",
                    text_coin: '120',
                    image_icon: 'assets/images/coin.png',
                    text: 'Get a second chance\n   ',
                    image: 'assets/images/shop_star.png',
                    onTap: () => showNotEnoughCoinsDialog(context),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            CustomContainer4(text: 'Background'),
            SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => showNotEnoughCoinsDialog(context),
                    child: Container(
                      width: 39.w,
                      padding: EdgeInsets.symmetric(vertical: 1.sp),
                      decoration: BoxDecoration(
                        color: const Color(0xFF5C2D12),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xFF2D1609),
                          width: 1.w,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/dark.png',
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.sp),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: 5.h),
                                  Text(
                                    'Put it in the backgrounds',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.5.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Padding(
                                    padding: EdgeInsets.only(left: 27.sp),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/coin.png',
                                          width: 6.w,
                                        ),
                                        SizedBox(width: 1.w),
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  GestureDetector(
                    onTap: () => showNotEnoughCoinsDialog(context),
                    child: Container(
                      width: 39.w,
                      padding: EdgeInsets.symmetric(vertical: 1.sp),
                      decoration: BoxDecoration(
                        color: const Color(0xFF5C2D12),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xFF2D1609),
                          width: 1.w,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/light.png',
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.sp),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: 5.h),
                                  Text(
                                    'Put it in the backgrounds',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.5.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Padding(
                                    padding: EdgeInsets.only(left: 27.sp),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/coin.png',
                                          width: 6.w,
                                        ),
                                        SizedBox(width: 1.w),
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
          ],
        ),
      ),
    );
  }
}
