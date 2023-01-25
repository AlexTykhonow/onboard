#!/usr/bin/env sh

cd .. &&
flutter clean &&
flutter pub get &&
flutter pub run build_runner build --delete-conflicting-outputs &&
flutter pub run easy_localization:generate
