#!/usr/bin/env sh

cd .. &&
flutter test &&
flutter analyze &&
flutter pub run dart_code_metrics:metrics analyze lib
