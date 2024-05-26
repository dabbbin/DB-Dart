void main(List<String> args) {
  Test test = Test(); 

  //Object 를 상속받기 때문에 ==> OOP!! 
  
  print(test.hashCode); //706034703
  print(test.runtimeType); //Test
  print(test.toString()); //Instance of 'Test'
  // print(test.noSuchMethod());
}

//Object Oriented Programming 
//객체지향 프로그래밍 
class Test extends Object{}