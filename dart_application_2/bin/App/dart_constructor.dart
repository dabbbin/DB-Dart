

void main(List<String> args) {
  
  //constructor   

  // Idol Easpa = Idol('에스파',['카리나','윈터','닝닝','지젤']);  //dart 는 new 를 넣어도, 안 넣어도 된다. 
  
  Idol Easpa2 = const Idol('에스파',['카리나','윈터','닝닝','지젤']);  
  Idol Easpa3 = const Idol('에스파',['카리나','윈터','닝닝','지젤']);  
  
  

  //namedconstructor
  //Immutable 프로그래밍** - 한 번 값 선언하면 변경할 수 없도록 설계 : final ! !  
  Idol Easpa = Idol.fromList([ 
        ['카리나','윈터','닝닝','지젤'],
        '에스파',  
    ]
  );  
  
  print(Easpa == Easpa2); //false
  print(Easpa2 == Easpa3); //true -- const 둘 다 설정시 true 


  print(Easpa.name); 
  // Easpa.name = '에스팡'; //final로 방지가능.  
  print(Easpa.name);  //이것을 방지하는 것 -> immutable 설계! (바꾸려면? -> new 생성자로 생성) 

  Easpa.sayHello();
  
  Idol bts = Idol('BTS', ['진', '뷔', '슈가']); 
  bts.sayHello();

  // Idol blackPink = Idol();
  
  // blackPink.sayHello(); 
  // blackPink.introduce(); 

  // print(blackPink.name); 
  

}

//Idol class 
//name(이름) - 변수 
//members (멤버들) -변수
//sayHello (인사) - 함수
//introduce (멤버소개) - 함수

//constructor (생성자) 
class Idol {
  final String name; 
  final List<String> members; 

  // Idol(String name , List<String> members) :
  //   this.name = name, 
  //   this.members = members;  

  //생성자를 간결하게 작성하는 방법 
  //const - 빌드시에 고정 변수가 final 이 아니면 사용 불가 
  const Idol(this.name, this.members);  
  
  

  //namedconstructor 
   Idol.fromList(List values)
    : this.members = values[0],
      this.name = values[1]; 

  void sayHello(){
    print('안녕하세요, ${this.name}입니다.'); 
  }

  void introduce(){
    print('저희 멤버는 ${this.members}가 있어요');
  }
}