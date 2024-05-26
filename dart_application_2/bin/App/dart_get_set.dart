void main(List<String> args) {
  
}

//getter/setter 
//데이터를 가져올 때/데이터를 설정할 때 
class Idol {
  String name; 
  List<String> members; 

  Idol(this.name, this.members);  

   Idol.fromList(List values)
    : this.members = values[0],
      this.name = values[1]; 

  void sayHello(){
    print('안녕하세요, ${this.name}입니다.'); 
  }

  void introduce(){
    print('저희 멤버는 ${this.members}가 있어요');
  }

  //getter 
  get firstMembe{
    return this.members[0];  
  } 

  
} 