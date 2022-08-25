import 'dart:async';

void main() async {
  final streamController = StreamController<DateTime>();
  Timer.periodic(Duration(seconds: 2), (timer) {
    streamController.add(DateTime.now());
  });

  streamController.stream.listen((event) {
    print(event);
  });
}
