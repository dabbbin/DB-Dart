import 'package:analyzer/src/lint/linter.dart';

void main(List<String> args) {
  //List 
  List<int> list1 = [1,2,3];
  print(list1); 

  List<String> list2 = ['가', '나', '다']; 
  print(list2); 

  //index 순서, 0부터 시작 
  print(list1[2]); 
  print(list2[1]); 

  print(list1.runtimeType);
  print(list1.length);
  print(list1.iterator); 

  list1.add(5); 
  print(list1); 

  print(list2.indexOf('나')); //1 

  //Map 
  Map<String, int> dictionary = {
    'one' : 1, 
    'two' : 2, 
    'three' : 3
  }; 

  print(dictionary); 

  Map<String, bool> isDic = {
    'Harry' : true, 
    'Ron' : true, 
    'Iron' : false,
  }; 

  //데이터 추가하기 
  print(isDic); 
  isDic.addAll({
    'dabin' : true, 
    'loopy' : false
  }); 

  isDic['Hulk'] = false; 

  print(isDic); 

  //value 값 가져오기 
  print(isDic['loopy']); 

  //key 는 못 가져옴 

  //값 바꾸기 
  isDic['loopy'] = true; 
  
  //삭제하기 
  isDic.remove('dabin');
  print(isDic);

  //keys, values 
  print(isDic.keys);  // (Harry, Ron, Iron, loopy, Hulk)
  print(isDic.values);  // (true, true, false, true, false) 

  //set : Map과 비슷하지만 List처럼 하나의 값으로만 저장. 중복값 불가.
  final Set<String> names = {
    'hong', 
    'kim',
    'kaun'
  }; 


  
  names.add('jenny'); 
  print(names); 

  names.remove('jenny'); 
  print(names);  

  print(names.contains('kim')); 
}