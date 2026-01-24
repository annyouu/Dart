// 必須かそうでないか
String mySecondFunction({required int age}){
  return age.toString();
}

// 引数が必須ではない
void myThirdFunction({int? age}){
  print(age);
}

String myFunction2({int? age}){
  return age.toString();
}

void main(){
  myThirdFunction();
  final String result = myFunction2(age: 12);
  print(result);
}