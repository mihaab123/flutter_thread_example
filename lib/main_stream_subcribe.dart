import 'dart:async';

void main() async {
  final streamController = StreamController<DateTime>();
  final unsubscribeAt = DateTime.now().add(Duration(seconds: 10));
  StreamSubscription<DateTime>? subscription;

  Timer.periodic(Duration(seconds: 2), (timer) {
    streamController.add(DateTime.now());
  });

  subscription = streamController.stream.listen((event) async {
    print(event);
    if (event.isAfter(unsubscribeAt)) {
      print("It's after ${unsubscribeAt}, cleaning up the stream");
      await subscription?.cancel();
    }
  });
}
