import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_container.dart';
import 'package:flutter_application_1/src/components/custom_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgrounImage: 'assets/images/splash_bac.png',
      backgrounImageHave: true,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/splash_icon.png', width: 70.w),
                SizedBox(height: 2.h),
                CustomContainer(
                  text: 'Shop',
                  onTap: () => context.push('/shop'),
                ),
                SizedBox(height: 2.5.h),
                CustomContainer(
                  text: 'Setting',
                  onTap: () => context.push('/settings'),
                ),
                SizedBox(height: 2.5.h),
                CustomContainer(
                  text: 'Play',
                  onTap: () => context.push('/eventselection'),
                ),
              ],
            ),
          ),

          Positioned(
            top: 7.h,
            right: 6.w,
            child: GestureDetector(
              onTap: () {
                context.push('/mycoins');
              },
              child: Container(
                height: 3.5.h,
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(131, 0, 0, 0),
                  borderRadius: BorderRadius.circular(12),
                ),
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
            ),
          ),
        ],
      ),
    );
  }
}
