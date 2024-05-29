void main(List<String> args) {

  Future<String>name = Future.value('dabbbin'); 
  Future<int> number = Future.value(1); 
  Future<bool> isTrue = Future.value(true); 

  print('함수시작'); 

  addNumbers(1, 1);
  addNumbers(2, 2);

}

void addNumbers(int number1, int number2) async{
  print('계산 시작: $number1 + $number2'); //2
 
  //await : 논리적인 기다림 
    await Future.delayed(Duration(seconds: 2), (){
    print('계산 완료: $number1 + $number2 = ${number1 + number2}'); //3
  }); 

  print('함수 완료: $number1 + $number2 '); //4 

}   