void main(List<String> args) {
  List<String> blackPink = ['로제', '지수',' 리사', '제니']; 

  //To do : 이름 앞에 `블랙핑크` 삽입 후 새로운 리스트 생성!!(해당 리스트 변경x) 
  final newblackPink = blackPink.map((x){
    return '블랙핑크 $x';
  }); 


  print(blackPink); 
  //--> Iterable<String> 형태로 반환 
  print(newblackPink);  //(블랙핑크 로제, 블랙핑크 지수, 블랙핑크  리사, 블랙핑크 제니)
  print(newblackPink.toList());
  //List, Set, Queue ⇒ Collection ⇒ Iterable
 
  final newblackPink2 = blackPink.map((x) => '블랙핑크 $x' ); 
  print(newblackPink2.toList());

  print(blackPink  == newblackPink2); //false 
  print(newblackPink == newblackPink2); //false 

  // To do: [1.jpg, 3.jpg, 5.jpg, 6.jpg]  
  String number = '1356';   

  final parsed = number.split('').map((x) => '$x.jpg').toList(); 
  print(parsed); //[1, 3, 5, 6]       


 } 