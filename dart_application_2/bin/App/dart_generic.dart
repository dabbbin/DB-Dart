void main(List<String> args) {
  Lecture<String, String> lecture1 = Lecture('123','lecture1'); 
  
  lecture1.printIdType(); 

  Lecture<int, String> lecture2 = Lecture(123, 'lecture'); 

  lecture2.printIdType(); 
 }

//generic - 타입을 외부에서 받을 때 사용 
class Lecture<T, X> {
  final T id;  
  final X name; 
  // final String name; 

  Lecture(this.id, this.name);  

  void printIdType(){
    print(id.runtimeType); 
  }
}