import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:singel_api/SingleUser/get_user.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 390),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) => const GetMaterialApp(home: GetUser()),
    ),
  );
}
