void main(List<String> args) {

  List<num> values = [1, 2, 3, 4, 5];
 
  print(add(10, values));

}

T add<T extends num>(T value, List<T> items) {
  T ret = value;
  items.forEach((value) {
    ret = (ret + value) as T;
  });
 
  return ret;
}