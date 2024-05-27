void main(List<String> args) {
  List<int> numbers = [
    1,
    3,
    5,
    7,
    9
    
  ]; 

  // reduce()는 인자로 BinaryOperator 객체를 받는데, BinaryOperator는 T 타입의 인자 두개를 받고 T 타입의 객체를 리턴하는 함수형 인터페이스
  // final result = numbers.reduce((prev, next){
  //   print('---------'); 
  //   print('previous: $prev'); 
  //   print('next : $next'); 
  //   print('total : ${prev + next}'); 

  //   return prev + next; 
  // }); 


  // 해당 내용이 위 내용과 동일하다. 
  final result = numbers.reduce((prev, next) => prev + next); //25  
 
  print(result);  

  List<String> words = [
    '안녕하세요', 
    '저는', 
    '코드팩토리입니다.'
  ]; 

  final sentence = words.reduce((prev, next) => prev + next); 

  print(sentence); 

  // words.reduce((prev, next) => prev.length + next.length); //error! int값이 아닌 String 으로 받아와야 함 
}