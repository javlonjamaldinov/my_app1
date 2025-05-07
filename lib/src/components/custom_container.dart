import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final double height;
  final double borderRadius;
  final TextStyle? textStyle;
  final TextStyle? strokeStyle;
  final VoidCallback? onTap;
  final bool icon;

  const CustomContainer({
    super.key,
    required this.text,
    this.height = 8.5,
    this.borderRadius = 20,
    this.textStyle,
    this.strokeStyle,
    this.onTap,
    this.icon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: SizedBox(
            height: height.h,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/container.png', fit: BoxFit.cover),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        icon
                            ? Icon(
                              Icons.arrow_back_ios,
                              color: const Color(0xFFF7F1D5),
                              size: 23.sp,
                            )
                            : const SizedBox(),
                        Stack(
                          children: [
                            Text(
                              text,
                              textAlign: TextAlign.center,
                              style:
                                  strokeStyle ??
                                  TextStyle(
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
                              text,
                              textAlign: TextAlign.center,
                              style:
                                  textStyle ??
                                  TextStyle(
                                    fontSize: 23.8.sp,
                                    fontFamily: 'ADLaM Display',
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFF7F1D5),
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(width: 0.w),
                      ],
                    ),
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
