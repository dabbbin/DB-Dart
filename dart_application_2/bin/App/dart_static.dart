void main(List<String> args) {
  Emplyoee emp1 = new Emplyoee('슬기'); 
  emp1.printNameAndBuilding();  

  Emplyoee.building = '서한빌딩'; 
  emp1.printNameAndBuilding(); 
  
  Emplyoee.printBuilding();
}

class Emplyoee {
  //static 은 instance 에 귀속되지 않고 class 에 귀속된다. 
  //알바생이 일하고 있는 건물 
  static String? building; 
  //알바생이름 
  final String name;

  Emplyoee(this.name); 

  void printNameAndBuilding(){
    print('제 이름은 $name 입니다. $building 건물에서 근무하고 있습니다.'); 
  } 

  static void printBuilding(){
    print('저는 $building 건물에서 근무중입니다.'); 
  }
}