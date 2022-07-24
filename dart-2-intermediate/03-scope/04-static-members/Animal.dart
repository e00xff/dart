class Animal {
  static int _counter = 0;

  Animal() {
    _counter++;
    print('There are ${_counter} of us');
  }

  static void speak() {
    print('speaking');
    run();
  }

  static void run() {
    print('running');
  }
}