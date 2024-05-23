void main(List<String> arguments) {
  print('안녕 다트는 처음이야'); 

  //변수선언 variable 
  var name = '코드팩토리'; 
  var name2 = '에스파'; 
  print(name);
  print(name2);

  name = 'Dart'; 
  print(name); 

  int age = 12; 
  int age2 = 24; 
  
  print(age2 + age); 
  print(age2 - age); 
  print(age2 / age); 
  print(age2 * age); 

  //실수 double 
  double number1 = 2.5; 
  double number2 = 0.5; 
  
  print(number2 + number1); 
  print(number2 - number1); 
  print(number2 / number1); 
  print(number2 * number1); 

  //boolean 
  bool isTrue = true; 
  bool isFalse = false;

  print(isTrue); 
  print(isFalse);  

  //string 
  String str = '뉴진스'; 
  String str2 = '여자아이들'; 

  print(name); 
  print(name2); 

//var String int 
  var name3 = '블랙핑크'; 
  var num = 20; 

  //runtimeType 타입체크 
  print(num.runtimeType);
  print(name3.runtimeType);
  print(isFalse.runtimeType);

  //근데 왜 굳이 타입을 따로 쓸까? 
  // --> 코드 가독성을 위해서. 
 
 Map<String, Map<int,List<double>>> testType = {}; // --> 실제가능 그러나 알아보기 힘들어, 
 //var testType = {}; 이런식으로 변환 
 
 String firstName = 'SONG'; 
 String lastName = 'YONUG'; 
 print(firstName + ' ' + lastName); 

 print('${name} ${name2}'); 
 print('$name.runtimeType $name2'); //중괄호를 안써도 됨. 변수가 하나인 경우! 하지만 함수를 쓰는 경우엔 불가 

 //dynamic 
 dynamic dnum = 5; 
 print(dnum); 

 dynamic dname = '다이나믹코드_d'; 
 var vname = '다이나믹코드_v';
 String sname = '다이나믹코드_s' ;
 print(dname.runtimeType); 
 print(vname.runtimeType); 
 print(sname.runtimeType); 

 dname = 25; // 다른타입으로 변환이 가능 
 //vname = 25; // 불가능 
 
  print(dname);


//nullable - null 이 될 수 있다. 
//non - nullable - null 이 될 수 있다. 
//null - 아무런 값도 있지 않다. 
String nameco = '아무런값'; 
print(nameco); 
// nameco = null; null값 부여를 못 함 
String? nameNull = '아무값'; 
print(nameNull); 

nameNull = null; 
print(nameNull); 

// print(nameNull!); --> ! : NULL이 절대 아니라는 뜻. ? : NULL 이 가능하다. 
//  

}
