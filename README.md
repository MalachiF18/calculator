# Malachi × Codex — Flutter Calculator

Fork: https://github.com/MalachiF18/calculator  
Original: https://github.com/dahliaOS/calculator  
Discovered in [Flutter Gems' open-source apps list](https://github.com/fluttergems/awesome-open-source-flutter-apps#tools--utilities).

## Submission videos

| Requested clip | File | Duration | Demonstration |
| --- | --- | --- | --- |
| Before | [before.mp4](docs/videos/before.mp4) | 5 seconds | Original interface: 2 + 3 = 5 |
| After | [after.mp4](docs/videos/after.mp4) | 7 seconds | Custom header, indigo palette, fork URL; 7 × 8 = 56 |
| Bug reproduction before | [bug-reproduction-before.mp4](docs/videos/bug-reproduction-before.mp4) | 5 seconds | 0! incorrectly displays error |
| Bug fixed after | [bug-fixed-after.mp4](docs/videos/bug-fixed-after.mp4) | 7 seconds | Identical operation correctly displays 1 |

These are actual running Flutter web app captures, encoded as H.264 MP4 from timestamped browser frames. The app is not a mockup. The before build includes only Flutter compatibility updates, with the original UI and factorial calculation unchanged. Recordings use a portrait browser viewport.

## Changes and bug fix

- Added a Malachi × Codex header, indigo calculator colors, and the fork URL.
- Updated Dart constraints, dependencies, deprecated text-theme API, and web bootstrap for Flutter 3.24.5 / Dart 3.5.4; retained Material 2 styling for the baseline.
- Found a new factorial defect while inspecting the source. The upstream issue list had no open bug suitable for this demonstration; this is not a claim to fix an existing upstream issue.
- Reproduce: enter 0, open the scientific panel with the side chevron, tap !, return with the chevron, and tap =. The original recursive function stops only when top == 1, so zero recurses until stack overflow and the UI shows error.
- Fixed factorial using an iterative product initialized to 1, so 0! = 1; negative integer arguments now throw ArgumentError.
- Added four tests covering addition, the zero-factorial UI flow, factorial values 0/1/5/10, and negative inputs. They pass after the fix; the regression tests fail before it.

## Run

Tested with Flutter 3.24.5 (Dart 3.5.4):

```sh
flutter pub get
flutter run -d chrome
flutter test
flutter build web --release --web-renderer html --pwa-strategy none
```

Static analysis reports no errors; upstream style/deprecation notices and two existing warnings remain. Only the web target was built and recorded; Android/iOS were not validated.

Original project attribution and Apache 2.0 license are retained below.

---

# calculator

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
