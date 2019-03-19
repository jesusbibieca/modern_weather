[![Build Status](https://app.bitrise.io/app/eb18756dca13ce2a/status.svg?token=9oKmzq433Vt7RtIBq7Je3A&branch=master)](https://app.bitrise.io/app/eb18756dca13ce2a) [![codecov](https://codecov.io/gh/jesusbibieca/modern_weather/branch/master/graph/badge.svg)](https://codecov.io/gh/jesusbibieca/modern_weather)

# Modern Weather

Stylish Weather app.

## Stack

* Flutter v1.2.1 stable

## Dependencies

* [Flutter SDK](https://flutter.dev/docs/get-started/install)
* [Android Studio](https://developer.android.com/studio)
* [Xcode](https://developer.apple.com/xcode/) (with command line tools)
* 🍺 Brew

### Environmental

Before continue, you need update your brew: `$ brew update`. This can take a considerable time if you haven't install anything in a while.

* **Download the Android 28 Platform**: Run `$ /Users/${USER}/Library/Android/sdk/tools/bin/sdkmanager "platforms;android-28" "build-tools;28.0.3`

* **Accept android licence**: Run `$ flutter doctor --android-licenses` accept terms and conditions hitting the `y` key.

* **Install brew dependencies**:
  * `brew install --HEAD usbmuxd libimobiledevice` (Unstable versions 🙀)
  * `brew install ios-deploy cocoapods ideviceinstaller` (stable versions 😌)
* Set up cocoapods: `$ pod setup` (spoiler: this will take a while)
* **Link brew dependencies**: `$ brew link usbmuxd`. If the console yell at you saying that you have already linked, force it: `$ brew unlink usbmuxd && brew link usbmuxd`
* Verify that all is well and good running `$ flutter doctor`. If it doesn't, just follow that the **doctor** says 👨🏻‍⚕️. You can trust him; all this was extracted from his recommendations.
* Verify that you have emulators/simulators available: `$ flutter emulators`. You can create them using the Android Studio/Xcode emulator/simulator GUI, or `flutter emulators --create [--name xyz]`.
* After that, you can launch it by running: `$ flutter emulators --launch <emulator name id>`

### Develop

1. Launch your emulator/simulator: `$ flutter emulators --launch <emulator name id>`
1. Run the app: `$ flutter run`

### Testing

1. Run: `$ flutter test`


### Flutter Docs

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
