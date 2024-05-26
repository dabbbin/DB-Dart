void main(List<String> args) {
  BoyGroup boyGroup = BoyGroup('bts'); 
  GirlGroup girlGroup =GirlGroup('뉴진스'); 

  //--> abstract 사용으로 해결 
  // IdolInterface test = IdolInterface('블랙핑크'); -> 문제,인터페이스는 인스턴스화 하면 안 됨! 
  boyGroup.sayName();
  girlGroup.sayName(); 

}

//interface 
abstract class IdolInterface{
  String name; 
  IdolInterface(this.name); 

  void sayName() {} 
}

class BoyGroup implements IdolInterface {
  String name; 
  
  BoyGroup(this.name); //동일형태로 맞춰줌  

  void sayName(){
    print('제 이름은 $name입니다.'); 
  }
}
class GirlGroup implements IdolInterface {
  String name; 

  GirlGroup(this.name); 

  void sayName(){
    print('제 이름은 $name입니다.'); 
  }
}