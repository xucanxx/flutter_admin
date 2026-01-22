import 'package:flutter/material.dart';
import 'package:flutter_admin/components/cryDialog.dart';
import 'package:flutter_admin/constants/constant.dart';
import 'package:flutter_admin/data/data1.dart';
import 'package:flutter_admin/utils/localStorageUtil.dart';
import 'package:flutter_admin/utils/storeUtil.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static isLogin() {
    final token = LocalStorageUtil.get(Constant.KEY_TOKEN);
    return token != null && token.isNotEmpty;
  }

  static logout() {
    LocalStorageUtil.remove(Constant.KEY_TOKEN);
    StoreUtil.treeVOList = [];
    StoreUtil.treeVOOpened = [];
  }

  static launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  static toPortal(
      BuildContext context, String message, String buttonText, String url) {
    cryAlertWidget(
      context,
      Container(
        height: 100,
        child: Column(
          children: [
            Text(message),
            SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.white,
              ),
              child: Text(buttonText),
              onPressed: () {
                Utils.launchURL(url);
              },
            ),
          ],
        ),
      ),
    );
  }

  static toIconData(String? icon) {
    if (icon == null || icon.isEmpty) {
      return Icons.menu;
    }
    // IconData iconData = IconData(int.parse(icon), fontFamily: 'MaterialIcons');
    return iconMap[icon] ?? Icons.menu;
  }
}
