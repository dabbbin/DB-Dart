void main(List<String> args) {
  TimesTwo tt = TimesTwo(2); 

  print(tt.calculate()); //4

  TimesFour tf = TimesFour(2); 

  print(tf.calculate()); //8
}

//method = function (class 내부에 있는 함수)
//override - 덮어쓰다(우선시하다) 

class TimesTwo{
  final int number ; 

  TimesTwo(
    this.number,
  ); 

  //method 
  int calculate(){
    return number * 2; 
  }
}

class TimesFour extends TimesTwo{
  TimesFour(
    int number,
  ) : super(number); 

  @override
  int calculate() {
    return super.calculate() * 2;   
  }
  // @override
  // int calculate() {
  //   return this.calculate() * 2;   
  // } --> 불가 : 무한 생성!  
}