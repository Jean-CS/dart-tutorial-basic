# Dart Tutorial from [Derek Banas](https://www.youtube.com/watch?v=OLjyCy-7U2U)

## Installing Dart (Windows)

This is how you install dart on a Windows environment. If you are looking for a macOS version, please watch the Derek Banas videos at `04:56`

1. Install [Chocolatey](https://chocolatey.org/)
2. Install Dart with Chocolatey: `choco install dart-sdk`
3. Install Dartium: `choco install dartium`

## Using Dart in Visual Studio Code

1. Install the [Dart Extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code) for VSCode

## Setting up the Project

1. Create your project directory
2. Inside it, create a `pubspec.yaml` file with the following:

```yml
name: my_project
version: 0.0.1
description: My project.
dependencies:
  path: any
```

3. Create a file named `main.dart` with:

```dart
void main() {
  print("Hello, world");
}
```

4. To test it, open up the terminal on your project directory and run the command `dart main.dart`

## Transpile Dart to Javascript

- Run the command `dart2js -o main.js main.dart`

> If you're using bash and it return 'dart2js: command not found', then you have to run the command as `dart2js.bat`
