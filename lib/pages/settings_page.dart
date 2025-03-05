import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

import '../models/settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsScreen(title: "Settings", children: [
      SettingsGroup(title: "Categories", children: [
        for (final category in Category.values)
          SwitchSettingsTile(title: category.name, settingKey: category.key),
      ]),
      SettingsGroup(title: "Blacklist", children: [
        for (final flag in BlacklistFlag.values)
          SwitchSettingsTile(
              title: flag.name, settingKey: flag.key, defaultValue: true),
      ]),
    ]);
  }
}
