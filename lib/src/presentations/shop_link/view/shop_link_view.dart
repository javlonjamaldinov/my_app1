import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/src/components/custom_scaffold.dart';
import 'package:flutter_application_1/src/presentations/shop/widget/custom_container4.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShopLinkView extends StatelessWidget {
  const ShopLinkView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: const Color(0xff1B2E04),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.sp),
                child: GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Container(
                    height: 5.5.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(90, 0, 0, 0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 23.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Container(
                width: double.infinity,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomContainer5(
                      text_coin: '10',
                      image_icon: 'assets/images/reklama.png',
                      text: 'Get a skip to skip ads\nimmediately',
                      image: 'assets/images/coutinio.png',
                    ),
                    SizedBox(width: 5.w),
                    CustomContainer5(
                      text_coin: '10',
                      image_icon: 'assets/images/reklama.png',
                      text: 'Skip one move without\nanswering',
                      image: 'assets/images/shop_clouse.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.sp),
                child: GestureDetector(
                  onTap: () {
                    Clipboard.setData(
                      const ClipboardData(
                        text: 'http://game/tabtreasure//true',
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 12.h,
                      width: double.infinity,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'assets/images/shop_container.png',
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 22.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'http://game/tabtreasure//true',
                                    style: TextStyle(
                                      fontSize: 16.1.sp,
                                      fontFamily: 'ADLaM Display',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(width: 3.w),
                                SvgPicture.asset(
                                  'assets/svg/copy.svg',
                                  width: 8.w,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Container(
                color: Colors.black,
                height: 6.h,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.sp),
                      child: Text(
                        'Get 10 coins for each friend',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 7.h,
            left: 10.w,
            right: 10.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 18.h,
                width: 80.w,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/show_dialog.png',
                      fit: BoxFit.fill,
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.sp),
                        child: Text(
                          "Get 1 coin for watching a\nvideo",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontFamily: 'ADLaM Display',
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 12.5.h,
            left: 25.w,
            right: 10.w,
            child: Row(
              children: [
                Image.asset('assets/images/reklama_big.png', width: 50.w),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
