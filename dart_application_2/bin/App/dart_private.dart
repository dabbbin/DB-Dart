//private 
import 'dart:mirrors';

void main(List<String> args) {
  _privateIdol privateIdol = new _privateIdol.fromList([
    "anion", 
    ['mango', 'banana']
  ]); 

  print(privateIdol.name);
  privateIdol._privateSay();
}

// '_' : private 기능. 외부에서 불러와도 사용 불가  
class _privateIdol {
  final String name; 
  final List<String> members; 

  _privateIdol.fromList(List values) :
    this.name = values[0], 
    this.members = values[1]; 

  _privateSay(){
    print("비밀조직 onion입니다. ");
  }
}