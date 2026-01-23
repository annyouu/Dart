void main() {
  // print('Hello Dart!');
  // print("こんにちは");

  const int number = 150;
  final String name = 'John';

  print(number);
  print('Hello $name');
  // こっちでも可
  // print('Name is ${name}');


  // 配列
  const List<String> fruits = ['りんご','バナナ','みかん'];
  print(fruits);

  final Set<int> nums = {1,81,44,82,86,886};
  print(nums);

  final Map<String, dynamic> info = {'name':'Blake', 'age':16};
  final String greeting = "${info['name']}, ${info['age']}";
  print(greeting);

  // 動的型付け (あまり使わないように)
  dynamic things;
  things = '2';
  things = 1;
  print(things);
}