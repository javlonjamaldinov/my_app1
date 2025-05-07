import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_scaffold.dart';
import 'package:flutter_application_1/src/presentations/choise_of_dishes/widget/grid_view_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChoiseOfDishesView extends StatelessWidget {
  const ChoiseOfDishesView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgrounImage: 'assets/images/splash_bac.png',
      backgrounImageHave: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: 113.sp,
                  left: 20.sp,
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
                Positioned(
                  bottom: 93.sp,
                  left: 47.sp,
                  child: Image.asset('assets/images/cook.png', width: 40.w),
                ),
                Positioned(
                  bottom: 104.5.sp,
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
                              'Salam, What shall \nwe cook today?',
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
                const GridViewBuilder(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
