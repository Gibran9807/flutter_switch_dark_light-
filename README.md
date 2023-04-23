
# Flutter Switch Dark/Light
A Flutter package to easily add a switch button to change between dark and light theme in your app.

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_switch_dark_light: ^0.0.1
```
Then, run `flutter pub get`.

## Usage

Import the package in your Dart file:

```dart 
import 'package:flutter_switch_dark_light/flutter_switch_dark_light.dart';
```

Add the `FlutterSwitchDarkLight` widget to your app:

```dart
FlutterSwitchDarkLight(
  onChanged: (value) {
    //do something with isDark value
  },
  darkModeStatus: _isDarkModeEnabled,
),
```

Customize the widget using its parameters:

```dart
FlutterSwitchDarkLight(
  onChanged: (bool isDark) {
    // do something with isDark value
  },
  padding: const EdgeInsets.all(16.0),
  onText: 'Dark',
  offText: 'Light',
  onColor: Colors.grey[900],
  offColor: Colors.grey[200],
  activeColor: Colors.amber,
),
```

## Parameters
| Parameter   | Description                                                  | Default           |
| ----------- | ------------------------------------------------------------ | ----------------- |
| `onChanged`   | Callback function that receives a bool value indicating if the switch is on or off. | `Required`          |
| `padding`     | The padding around the switch.                               | `EdgeInsets.zero`   |
| `onText`      | The text displayed when the switch is on.                    | `'Dark'`            |
| `offText`     | The text displayed when the switch is off.                   | `'Light'`           |
| `onColor`     | The color of the switch when it's on.                        | `Colors.grey[900]`  |
| `offColor`    | The color of the switch when it's off.                       | `Colors.grey[200]`  |
| `activeColor` | The color of the switch's thumb when it's on.                | `Colors.amber`      |


## Example
```dart
import 'package:flutter/material.dart';
import 'package:flutter_switch_dark_light/flutter_switch_dark_light.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _onThemeChanged(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Switch Dark/Light Demo',
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: FlutterSwitchDarkLight(
            onChanged: _onThemeChanged,
            onColor: Colors.black,
            offColor: Colors.white,
            activeColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}


```

