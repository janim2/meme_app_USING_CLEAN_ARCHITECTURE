import 'package:flutter/material.dart';

import 'package:meme_app/core/injector/injector.dart' as injector;

import 'app/view/app.dart';

void main() {
  injector.configureDependencies();
  runApp(MemeApp(
    flavor: 'PROD',
  ));
}
