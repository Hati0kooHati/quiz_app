import 'package:quiz_app/quiz_app.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (fn) {
    runApp(QuizApp());
    }
  );
}
