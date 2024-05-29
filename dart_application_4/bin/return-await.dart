void main(List<String> args) async {

  Future<String>name = Future.value('dabbbin'); 
  Future<int> number = Future.value(1); 
  Future<bool> isTrue = Future.value(true); 

  print('함수시작'); 

  //To Do : addNumbers 함수도 기다렸다가 실행하길 원한다.  
  //await 는 반환값이 future  일 때만 가능하다. 
  final result1 = await addNumbers(1, 1);
  final result2 =await addNumbers(2, 2); 

print('result1 : $result1');
print('result2 : $result2');
print('result1 + result2 :  ${result2 +  result2}');
}

Future<int> addNumbers(int number1, int number2) async{
  print('계산 시작: $number1 + $number2'); //2
 
  //await : 논리적인 기다림 
    await Future.delayed(Duration(seconds: 2), (){
    print('계산 완료: $number1 + $number2 = ${number1 + number2}'); //3
  }); 

  print('함수 완료: $number1 + $number2 '); //4 

  return number1 + number2; 
}   