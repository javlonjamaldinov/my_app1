import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_container.dart';
import 'package:flutter_application_1/src/components/custom_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EventSelectionView extends StatelessWidget {
  const EventSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgrounImage: 'assets/images/splash_bac.png',
      backgrounImageHave: true,
      body: SafeArea(
        child: Column(
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
            SizedBox(height: 8.h),
            Center(
              child: Image.asset('assets/images/splash_icon.png', width: 70.w),
            ),
            SizedBox(height: 2.h),
            CustomContainer(
              text: 'Cooking Test',
              onTap: () {
                context.push('/choiseofdishes');
              },
            ),
            SizedBox(height: 2.5.h),
            CustomContainer(
              text: 'Questions',
              onTap: () {
                context.push('/questions');
              },
            ),
            SizedBox(height: 2.5.h),
            CustomContainer(
              text: 'Quick Questions',
              onTap: () {
                context.push('/questions');
              },
            ),
            SizedBox(height: 15.h),
            Divider(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
