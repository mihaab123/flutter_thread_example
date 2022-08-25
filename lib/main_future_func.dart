Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

Future<void> main() async {
  createOrderMessage().then((value) {
    print('Future finished successfully i.e. without error');
  }).catchError((error) {
    print('Future finished with error');
  }).whenComplete(() {
    print('Either of then or catchError has run at this point');
  });
}
