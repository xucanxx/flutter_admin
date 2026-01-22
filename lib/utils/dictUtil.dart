import 'package:flutter_admin/vo/selectOptionVO.dart';

class DictUtil {
  static String getDictName(num value, List<SelectOptionVO> list,
      {String defaultValue = ''}) {
    try {
      SelectOptionVO result = list.firstWhere((v) {
        return v.value == value;
      });
      return result.label;
    } catch (e) {
      return defaultValue;
    }
  }
}
