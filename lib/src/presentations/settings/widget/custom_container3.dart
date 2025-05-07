import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomContainer3 extends StatefulWidget {
  final String text;
  final double height;
  final double borderRadius;
  final TextStyle? textStyle;
  final TextStyle? strokeStyle;
  final VoidCallback? onTap;
  final bool icon;

  const CustomContainer3({
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
  State<CustomContainer3> createState() => _CustomContainer3State();
}

class _CustomContainer3State extends State<CustomContainer3> {
  bool _toggled = false;

  void _handleTap() {
    setState(() {
      _toggled = !_toggled;
    });
    widget.onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    String? imagePath;
    String displayText = widget.text;

    if (widget.text == 'Music') {
      imagePath =
          _toggled
              ? 'assets/images/music_off.png'
              : 'assets/images/music_on.png';
    } else if (widget.text == 'Notification') {
      imagePath =
          _toggled
              ? 'assets/images/notification_off.png'
              : 'assets/images/notification_on.png';
    } else if (widget.text == 'English') {
      imagePath = 'assets/images/language.png';
      displayText = _toggled ? 'Russians' : 'English';
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: GestureDetector(
        onTap: _handleTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          child: SizedBox(
            height: widget.height.h,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/container.png', fit: BoxFit.cover),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.sp),
                    child: Row(
                      children: [
                        if (imagePath != null)
                          Image.asset(imagePath, width: 13.w),
                        if (imagePath != null) SizedBox(width: 3.w),
                        Text(
                          displayText,
                          style:
                              widget.textStyle ??
                              TextStyle(
                                fontSize: 22.sp,
                                fontFamily: 'ADLaM Display',
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFF7F1D5),
                                shadows: [
                                  Shadow(
                                    offset: Offset(0, 2),
                                    blurRadius: 3,
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                                ],
                              ),
                        ),
                        const Spacer(),
                        widget.icon
                            ? Icon(
                              Icons.arrow_forward,
                              color: const Color(0xFFF7F1D5),
                              size: 23.sp,
                            )
                            : const SizedBox(),
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
