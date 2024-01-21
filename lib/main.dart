import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'App/my_app.dart';

void main() async {
  runApp(const MyApp());
  await ScreenUtil.ensureScreenSize();
}
