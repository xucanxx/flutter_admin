import 'package:flutter/widgets.dart';

class PageVO {
  const PageVO({required this.id, required this.widget, required this.children, required this.icon, required this.title});
  final String id;
  final IconData icon;
  final String title;
  final List<PageVO> children;
  final Widget widget;
}
