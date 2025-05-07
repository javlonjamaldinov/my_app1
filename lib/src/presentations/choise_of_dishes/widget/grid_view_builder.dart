import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  final List<Map<String, String>> dishes = const [
    {'name': 'manti', 'image': 'assets/images/manti.png'},
    {'name': 'pilaf', 'image': 'assets/images/pilaf.png'},
    {'name': 'soup', 'image': 'assets/images/soup.png'},
    {'name': 'lagman', 'image': 'assets/images/lagman.png'},
    {'name': 'kurdak', 'image': 'assets/images/kurdak.png'},
    {'name': 'samsa', 'image': 'assets/images/samsa.png'},
  ];

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = 2;
    final itemHeight = 32.h;
    final spacing = 0.h;
    final rowCount = (dishes.length / crossAxisCount).ceil();
    final totalHeight = itemHeight * rowCount + spacing * (rowCount - 1);

    return Positioned(
      top: 28.h,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SizedBox(
          height: totalHeight,
          child: GridView.count(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 4.w,
            mainAxisSpacing: spacing,
            physics: const NeverScrollableScrollPhysics(),
            children:
                dishes.map((dish) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: 0.h,
                        left: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            context.push('/ingredientquestions');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              height: 20.h,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset(
                                    'assets/images/container.png',
                                    fit: BoxFit.fill,
                                  ),
                                  Center(
                                    child: Text(
                                      dish['name']!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        fontFamily: 'ADLaM Display',
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFFF7F1D5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10.h,
                        left: 10.sp,
                        right: 10.sp,
                        child: Image.asset(
                          dish['image']!,
                          fit: BoxFit.contain,
                          height: 12.h,
                        ),
                      ),
                    ],
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}
