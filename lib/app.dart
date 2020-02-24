import 'package:apple_music_dialog/love_dialog/love_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (_, child) {
        return ChangeNotifierProvider(
          create: (_context) => LoveDialogVisibilityNotifier(),
          child: Portal(
            child: Nested(
              children: [
                LoveDialogEntry(),
              ],
              child: child,
            ),
          ),
        );
      },
      home: MyHomePage(),
    );
  }
}
