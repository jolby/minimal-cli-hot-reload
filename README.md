# cljd_minimal_cli_hot_reload

A simple demo of a somewhat clunky hot-reload setup for ClojureDart CLI apps. Useful for quick spikes and tests of the Dart/Flutterverse without having to set up a GUI. When a real REPL comes along, this probably won't provide very much value.

## Getting Started

```bash
# Use 2 terminals, plus have your editor with one of the cljd files in this repo opened.

# Terminal 1
git clone https://github.com/jolby/minimal-cli-hot-reload
cd minimal-cli-hot-reload
clj -M:cljd init
clj -M:cljd compile

# Then, in Terminal 2
dart --enable-vm-service lib/main.dart
# This will start the runtime, where you will be prompted to enter 'r' for reload, or 'q' to quit.

# Then in your editor, change a cljd file in the project, and save.

# Then in Terminal 1
clj -M:cljd compile

# If that works, in Terminal 2, enter 'r'

```

# Credits
Uses [HotReloadRunner](https://github.com/louiskhchan/hot_reload_runner.git), installed locally under the 'vendor' directory.

HotReloadRunner in turn uses:
[FlutterHotReloader](https://github.com/kika/flutter_hotreloader)
