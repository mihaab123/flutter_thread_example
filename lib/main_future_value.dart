void main() async {
  Future<int> getFuture() {
    return Future<int>.value(2021);
  }

  final result = await getFuture();
  print(result);
}
