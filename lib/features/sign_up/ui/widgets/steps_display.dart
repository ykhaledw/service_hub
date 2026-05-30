import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepsDisplay extends StatelessWidget {
  const StepsDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(),
        separatorBuilder: (context, index) => Container(),
        itemCount: 3,
      ),
    );
  }
}
