import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_scaffold.dart';
import 'package:flutter_application_1/src/presentations/settings/widget/custom_container3.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum ThemeOption { ordinary, morning, night }

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  ThemeOption selectedOption = ThemeOption.ordinary;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgrounImageHave: true,
      backgrounImage: 'assets/images/splash_bac.png',
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 22.sp,
                    ),
                    Stack(
                      children: [
                        Text(
                          'Setting',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23.8.sp,
                            fontFamily: 'ADLaM Display',
                            fontWeight: FontWeight.w400,
                            foreground:
                                Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = Colors.black,
                          ),
                        ),
                        Text(
                          'Setting',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23.8.sp,
                            fontFamily: 'ADLaM Display',
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFF7F1D5),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8.w),
                  ],
                ),
              ),
            ),
            Spacer(),
            CustomContainer3(text: 'Music', icon: true),
            SizedBox(height: 2.5.h),
            CustomContainer3(text: 'Notification'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.sp),
              child: CustomContainer3(text: 'English', icon: true),
            ),
            SizedBox(height: 1.h),
            _buildOption(ThemeOption.ordinary, 'Ordinary'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.sp),
              child: _buildOption(ThemeOption.morning, 'Morning'),
            ),
            _buildOption(ThemeOption.night, 'Night'),
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.only(bottom: 30.sp),
              child: Divider(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(ThemeOption option, String label) {
    final isSelected = selectedOption == option;
 
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: GestureDetector(
        onTap: () {
          setState(() => selectedOption = option);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp),
          child: Row(
            children: [
              Container(
                width: 9.w,
                height: 3.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xffFFBE30), width: 2),
                ),
                child:
                    isSelected
                        ? Center(
                          child: Container(
                            width: 4.w,
                            height: 4.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFFBE30),
                            ),
                          ),
                        )
                        : null,
              ),
              SizedBox(width: 2.5.w),
              Text(
                label,
                style: TextStyle(
                  fontSize: 19.5.sp,
                  fontFamily: 'ADLaM Display',
                  fontWeight: FontWeight.w600,
                  color: const Color(0xffF7F1D5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
