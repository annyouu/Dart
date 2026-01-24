void main() {
  var grade = 'B';

  switch (grade) {
    case 'A':
      print('Excellent work!');
      break;
    case 'B':
      print('Good job!');
      continue cheer; // ラベル名を指定
    cheer: // case 'C'にラベルを付与
    case 'C':
      print('You can do better!');
      break;
    default:
      print('Invalid grade!');
  }

  List<int> numbers = [1, 2, 3, 4, 5];
  for (int n in numbers) {
    print(n);
  }

  Map<int,String> myMap = {81:'JP',1:'US',44:'GB'};

  for (int key in myMap.keys) {
    print(key);
  }

  // value
  for (String value in myMap.values) {
    print(value);
  }

  for (var entry in myMap.entries) {
    print('${entry.key}, ${entry.value}');
  }
}
