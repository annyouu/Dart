String myFunction(int number){
  return number.toString();
}

// 返り値がない
void sayHello(){
  print('Hello World!!');
  return;
}

// アロー構文
void sayHello2() => print('Hello World!!');

void main() {
  sayHello();
  final number = myFunction(53);
  print(number);
}