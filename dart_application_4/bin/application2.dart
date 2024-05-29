void main(List<String> args) {
  // Future - 미래 
  // 미래에 받아올 값 
  Future<String>name = Future.value('dabbbin'); 
  Future<int> number = Future.value(1); 
  Future<bool> isTrue = Future.value(true); 

  print('함수시작'); //1
//2개의 파라미터 
// delayed - 지연되다. 
// 1번 파라미터 - 지연할 기간 (얼마나 지연할건지) Duration 
// 2번 파라미터 - 지연 시간이 지난 후 실행할 함수. 
  addNumbers(1, 1);
  addNumbers(2, 2); 
}

void addNumbers(int number1, int number2){
  print('계산 시작: $number1 + $number2'); //2

  //서버 시뮬레이션 
  Future.delayed(Duration(seconds: 2), (){
    print('계산 완료: $number1 + $number2 = ${number1 + number2}'); //3
  }); 

  print('함수 완료: $number1 + $number2 '); //4 

  //동기 프로그래밍이었다면 2초를 기다린 후 함수 완료를 했을 것. => resource 낭비! 
}   