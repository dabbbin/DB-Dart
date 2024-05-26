void main(List<String> args) {
  print('---------------Idol--------------'); 
  Idol idol =  new Idol(name: 'bts', membersCount: 5); 
  
  print('------------boyGroup-------------');
  BoyGroup boyGroup = BoyGroup('infinite', 7); 
  print(boyGroup.name); 
  boyGroup.sayName(); //부모 생성자 사용 가능!!   

  print('------------grilGroup--------------');
  GirlGroup girlGroup = GirlGroup('Apink', 5); 
  girlGroup.sayMembersCount();  

  print('------------Type Comparison---------');  
  print(girlGroup is Idol);  
  print(boyGroup is Idol);  
  print(girlGroup is BoyGroup);   
  print(girlGroup is GirlGroup);  //true //부모 클래스, 자식 클래스 둘 가능하다. 
  print(Idol is BoyGroup);  //false   
} 

//inheritance 
//상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 받는다. 

class Idol {
  String name; 
  int membersCount; 

  Idol({
    required this.name, 
    required this.membersCount, 
  }); 

  void sayName(){
    print('저는 ${this.name} 입니다.'); 
  }

  void sayMembersCount(){
    print('${this.name}은 ${this.membersCount} 명의 멤버가 있습니다.'); 
  }

  
}

class BoyGroup extends Idol{
  // BoyGroup({
  //   required super.name, //super - 부모 클래스  
  //   required super.membersCount
  //   }); 

  BoyGroup(
    String name, 
    int membersCount
   ) : super(
      name : name, 
      membersCount: membersCount, 
    ); 
  
  void sayMale(){
    print('저는 남자아이돌입니다.'); 
  }

 
}

 class GirlGroup extends Idol{
    
    GirlGroup(
      String name, 
      int membersCount, 
    ): super (
      name : name, 
      membersCount: membersCount
    ); 

    void sayFemale(){
      print('저희는 걸그룹입니다.'); 
    }
}