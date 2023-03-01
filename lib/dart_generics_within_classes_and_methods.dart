// Generic Types can be used within classes and methods
// Generic Methods make everything more abstract, more universal and more widely-compatible

class Utils {
  static T? getItem<T>(List<T> list, int index) =>
      list.asMap().containsKey(index) ? list[index] : null;
}

dynamic utilsDisplay(List<String> arguments) {
  var list = ['a', 'b', 'c'];
  print(Utils.getItem(list, 0));
  print(Utils.getItem(list, 1));
  print(Utils.getItem(list, 2));
  print(Utils.getItem(list, 3));
}
