
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxValueWidth on double {
  Widget get sizedBoxWidth => SizedBox(width: this.w);
}

extension SizedBoxValueHeight on double {
  Widget get sizedBoxHeight => SizedBox(height: this.w);
}