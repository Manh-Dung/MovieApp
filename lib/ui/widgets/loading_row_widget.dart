import 'package:flutter/material.dart';
import 'package:vinhcine/commons/app_shadow.dart';
import 'package:shimmer/shimmer.dart';

class LoadingRowWidget extends StatelessWidget {
  EdgeInsets? padding;
  double height;

  static final _defaultPadding = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 6,
  );

  LoadingRowWidget({this.padding, this.height = 100});

  @override
  Widget build(BuildContext context) {
    var padding = this.padding ?? _defaultPadding;
    return Container(
      height: height,
      padding: padding,
      child: Container(
        child: Shimmer.fromColors(
          baseColor: Colors.grey[350] ?? Colors.white,
          highlightColor: Colors.grey[100] ?? Colors.white,
          child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              )),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: AppShadow.boxShadow),
      ),
    );
  }
}
