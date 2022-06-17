import 'package:flutter/material.dart';
import 'package:projectuas/pages/absensi_pages.dart';

Map<String, WidgetBuilder> buildRouter(BuildContext context) {
  return {
    '/': (context) => AbsensiPages(),
  };
}
