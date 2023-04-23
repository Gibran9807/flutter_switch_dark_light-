import 'package:flutter/material.dart';

class SwitchListTileTheme extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onChanged;

  const SwitchListTileTheme({
    required this.isDarkMode,
    required this.onChanged,
  });

  @override
  _SwitchListTileThemeState createState() => _SwitchListTileThemeState();
}

class _SwitchListTileThemeState extends State<SwitchListTileTheme> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text('Dark Mode'),
      value: widget.isDarkMode,
      onChanged: widget.onChanged,
    );
  }
}
