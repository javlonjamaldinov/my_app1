import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  int _activeIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    // Таймер для индикаторов
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_activeIndex < 6) {
        setState(() {
          _activeIndex++;
        });
      } else {
        timer.cancel();
        context.go('/home');
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgrounImageHave: true,
      backgrounImage: 'assets/images/splash_bac.png',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 45.sp),
            child: Image.asset(
              'assets/images/splash_icon.png',
              width: 73.w,
            ),
          ),
          SizedBox(height: 27.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(6, (index) {
              final isActive = index < _activeIndex;
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  width: 12.5.w,
                  height: 1.3.h,
                  decoration: BoxDecoration(
                    color: isActive
                        ? const Color(0xFFF2F29E27)
                        : const Color(0xF25C4528),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
