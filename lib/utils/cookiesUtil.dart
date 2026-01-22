import 'dart:html' if (dart.library.io) 'package:universal_html/html.dart' as html;

class CookiesUtil {
  static set(String k, String v) {
    html.document.cookie = k + "=" + v;
  }

  static String? get(String k) {
    List<String> list = html.document.cookie?.split("; ") ?? [];
    if (list.isEmpty) {
      return null;
    }
    try {
      String m = list.firstWhere((element) {
        return element.split("=").first == k;
      });
      return m.split("=")[1];
    } catch (e) {
      return null;
    }
  }
}
