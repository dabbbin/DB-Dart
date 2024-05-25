enum Status{
  approved, //승인 
  pending, //대기
  rejected, //거절
} 

void main(List<String> args) {
  //Enum : 정확하게 3개의 값만 존재한다! 라는 것을 강조한다. 
  Status status = Status.pending; 
  
  if(status == Status.approved){
    print("승인입니다."); 
  } else if(status == Status.pending){
    print("대기입니다."); 
  } else  {
    print("거절입니다."); 
  } 

  addNUmbers(10); 
  addNUmbers(20); 

  //named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.) 
  addNamed(y: 20, x: 10, z: 30);  
} 

//함수 
// parameter / argument - 매개변수 
//positional parameter - 순서가 중요한 파라미터 
//optional parameter - 있어도 되고 없어도 되는 파라미터 
int addNUmbers(int num, [int a = 5]){
  print("addNumbers 실행");  
  int x = 10; 
  int y = 20; 
  int z = 30; 
  
  int sum = x + y * z + num; 
  print('x : $x'); 
  print('y : $y'); 
  print('z : $z');
  print('num : $num'); 
  print('a : $a'); 

  if(sum % 2 == 0){
    print('짝수입니다.'); 
  } else {
    print('홀수입니다.'); 
  } 
  return sum; 
}

//named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.) 
addNamed ({
  required int x, //required를 지우면 optional parameter 가능 
  required int y, 
  required int z 
}){
  int sum = z + y + z; 
  print(sum); 
}