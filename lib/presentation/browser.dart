import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class Browser {
  static launchBrowser({required String link}) {
    if (Platform.isAndroid) {
      FlutterWebBrowser.openWebPage(
        url: link,
        customTabsOptions: CustomTabsOptions(
          colorScheme: CustomTabsColorScheme.dark,
          toolbarColor: Colors.white,
          secondaryToolbarColor: Colors.green,
          navigationBarColor: Colors.white,
          addDefaultShareMenuItem: true,
          instantAppsEnabled: true,
          showTitle: true,
          urlBarHidingEnabled: true,
        ),
      );
    } else if (Platform.isIOS) {
      FlutterWebBrowser.openWebPage(
        url: link,
        safariVCOptions: SafariViewControllerOptions(
          barCollapsingEnabled: true,
          preferredBarTintColor: Colors.white,
          preferredControlTintColor: Colors.grey,
          dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
          modalPresentationCapturesStatusBarAppearance: true,
        ),
      );
    }
  }
}
