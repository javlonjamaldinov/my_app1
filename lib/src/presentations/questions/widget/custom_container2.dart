import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomContainer2 extends StatelessWidget {
  final String text;
  final bool? isCorrect;
  final VoidCallback? onTap;

  const CustomContainer2({
    super.key,
    required this.text,
    this.isCorrect,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 8.5.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/container.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Stack(
                    children: [
                      Text(
                        text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 23.8.sp,
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
                        style: TextStyle(
                          fontSize: 23.8.sp,
                          fontFamily: 'ADLaM Display',
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFF7F1D5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (isCorrect != null)
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Image.asset(
                  isCorrect!
                      ? 'assets/images/check.png'
                      : 'assets/images/clouse.png',
                  width: 10.w,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
