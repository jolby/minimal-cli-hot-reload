import 'package:hot_reload_runner/hot_reload_runner.dart';

void printSomething() {
  print('YYYY Yello hot reload');
  print('Take me to the Glorfinator!');
}

void main() async {
  HotReloadRunner.run(printSomething);
}
