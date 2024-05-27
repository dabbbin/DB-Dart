
void main(List<String> args) {
  List<int> numbers = [1,3,5,7,9]; 

  //reduce 는 int 의 값이 무조건 반환. 
  //fold 는 명시해줘야함. 
  final sum = numbers.fold<int>(0, (prev, next) => prev + next);  
  print(sum);

  List<String> words = [
    '안녕하세요 ', 
    '저는 ',
    '코드팩토리입니다.', 
  ]; 
 
  final sentence = words.fold<String>('', (prev, next) => prev + next); 

  print(sentence); 

  final count = words.fold<int>(0, (prev, next) => prev + next.length); 

  print(count); 


}