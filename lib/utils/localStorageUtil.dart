import 'package:universal_html/html.dart';

class LocalStorageUtil {
  static set(String k, String? v) {
    (v == null) ? window.localStorage.remove(k) : window.localStorage[k] = v;
  }

  static remove(String k) {
    window.localStorage.remove(k);
  }

  static String? get(String k) {
    return window.localStorage[k];
  }
}
