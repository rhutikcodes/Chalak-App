# Chalak App
Flutter app developed during Flipr Hackathon XII following [Uncle Bob's Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)

Problem Statement:
1. Login via
● Username - password
● Login using OTP through the mail. This means OTP should be sent to mail ID.
2. Dealer Home screen should show the list of drivers going through the same route as the
dealer's State and City which means the dealer should be able to see the drivers who have
mentioned the same interested routes as the dealer’s State and City.
3. Drivers Home screen should show the list of Dealers that have booked them.
![screenshot](https://user-images.githubusercontent.com/46106467/153859252-2611aab8-fc9e-4741-9321-a907554e59a1.png)
# Live Demo [Click here](https://chalak.netlify.app/)

### Uncle Bob's Clean Architecture Proposal
![CleanArchitecture](https://user-images.githubusercontent.com/46106467/113936871-0b3a3a80-9816-11eb-9739-6e54665d234a.jpg)

### Folder Structure

- **`domain`**: abstract classes, usecases, entities
- **`data`:** domain implementation, all external data sources
- **`application`**:  Directly translates to `cubit`.
- **`presentation`** : all `screens` and `widgets`.

### Dependencies

- [**BLoC**](https://pub.dev/packages/flutter_bloc), Widgets that make it easy to integrate blocs and cubits into Flutter
    > flutter_bloc: ^8.0.1
- [**flutter_web_frame**](https://pub.dev/packages/flutter_web_frame), Make the frame max width / size when on large devices such as Web or Desktop.
    > flutter_web_frame: ^0.0.2
- [**giff_dialog**](https://pub.dev/packages/giff_dialog), A beautiful and custom alert dialog for flutter
    > giff_dialog: ^1.0.1
- [**freezed**](https://pub.dev/packages/freezed), used to generate data class and union class.
    > freezed: ^1.1.1
- [**Dartz**](https://pub.dev/packages/dartz), Functional programming in Dart
    > dartz: ^0.10.1
- [**cloud_firestore**](https://pub.dev/packages/cloud_firestore), A Flutter plugin to use the Cloud Firestore API.
    > cloud_firestore: ^3.1.8
- [**injectable**](https://pub.dev/packages/injectable), Injectable is a convenient code generator for get_it.
    > injectable: ^1.5.3

and more :)

### Code Generation

```
flutter pub run build_runner build --delete-conflicting-outputs
```

Following commmand will keep checking for changes in code and do code generation on the fly.

```
flutter pub run build_runner watch --delete-conflicting-outputs
```

### Build apk
```
flutter build apk
```

### Run project
```
flutter run
```

### Flutter web + netlify CI/CD pipeline

Build command:
```
if cd flutter; then git pull && cd ..; else git clone https://github.com/flutter/flutter.git; fi && flutter/bin/flutter config --enable-web && flutter/bin/flutter build web --release
```
Publish directory: `build/web`

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


