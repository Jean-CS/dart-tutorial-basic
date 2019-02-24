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

## DataTypes

- Numbers

  - Integers
    `int maxInt = 9007199254740992;`
  - Double
    `double piVal = 3.141592653589793;`
    Double's max precision is 15 digits.

- Booleans `bool canVote = true;`
- Strings
- Lists `List randList = [1,2,3,4];`
- Maps

`Map randMap = {1 : "Tom Smith", 2 : "Betty" };`

```dart
Map customers = {100 : {"name": "Paul Smith", "balance" : 120.25}};
String output = "${customers[100]["name"]} balance is ${customers[100]["balance]};
```

- 'Dynamic' with `var name = 'John'`

## Math Lib

```dart
var random = new Random();
var randomInteger = random.nextInt(100); // random integer from 0 to 100
var exponencial = exp(3);
var log = log(1000);
var max = max(10, 5);
var min = min(10, 5);
var power = pow(10, 5);
var squareRoot = sqrt(81);
var round = round(6.4498);
```

Other math functions: acos, asin, atan, atan2, cos, sin, tan

## Functions

```dart
void funcTest() {
  String output = "";

  times2(num) => num * 2;

  output += "67 * 2 = ${multiply(67, times2)}\n";

  output += "Factorial of 4 = ${factorial(4)}";
}

int multiply(int num, func) {
  return func(num);
}

int factorial(int num) {
  if (num <= 1) {
    return 1;
  }

  return num * factorial(num - 1);
}

/*
* 1st : num = 4 * factorial(3) = 4 * 6 = 24
* 2nd : num = 3 * factorial(2) = 3 * 2 = 6
* 3rd : num = 2 * factorial(1) = 2 * 1 = 2
*/
```

## HTML Lib

Library to create and manipulate HTML from Dart.

Create elements like `AreaElement, BRElement, ButtonElement, InputElement`
You can find the full list of elements in the [Docs page](https://api.dartlang.org/apidocs/channels/be/dartdoc-viewer/dart:html)
