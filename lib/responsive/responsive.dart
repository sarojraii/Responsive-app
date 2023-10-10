import 'package:flutter/cupertino.dart';

enum deviceType {
  mobile,
  web,
  tablet,
}

getDevicetype(MediaQueryData mediaQuery) {
  var size = mediaQuery.size.width;
  if (size < 768) {
    return deviceType.mobile;
  } else if (size > 768 && size < 1024) {
    return deviceType.tablet;
  } else if (size > 1025 && size < 1280) {
    return deviceType.web;
  } else {
    return deviceType.mobile;
  }
}
