void main(List<String> args) {
  //시간 
  final DateTime now = DateTime.now();
  print(now); //2024-05-24 00:02:49.341687 
  //주의해야 할 점 : DateTime.now() 함수가 실행될 때의 시간이다! 버튼 누르는 시간이 아닌.. 


  // const DateTime now = DateTime.now(); //빌드 타임 값을 모르기 때문에 .
  //빌드 타임이란? 코드를 작성한 순간의 시간. 
  //final 은 빌드 타임의 값을 몰라도 되고, const 는 빌드 타임 값을 알아야 한다. 

  //null 
  double? number = 4.0; 
  print(number);

  number = null; 
  print(number); 

  // ??: number가 null 일때만 3.0으로 바꿔라.  
  number ??=3.0;
  print(number); 

  int num1 = 3; 
  int num2 = 8; 

  print(num1>num2);
  print(num1<=num2);
  print(num1==num2);

  bool result = 12 > 10 && 1 > 0; 
  print(result);

  bool result2 = 90 < 30 || 0 > 1; 
  print(result2);

  
}