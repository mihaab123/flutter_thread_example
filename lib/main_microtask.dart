void main() {
  Future(() => print('future 1'));
  Future(() => print('future 2'));
  // Microtasks will be executed before futures.
  Future.microtask(() => print('microtask 1'));
  Future.microtask(() => print('microtask 2'));
}
