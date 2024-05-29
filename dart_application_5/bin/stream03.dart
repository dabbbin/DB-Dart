import 'dart:async';

void main(List<String> args) {
  final controller = StreamController();

  //To Do : 홀/짝 구분해서 받기 
  final stream = controller.stream.asBroadcastStream(); 

  final streamListener1 = stream.where((val)=> val % 2 ==0).listen((val){
    print('Listener 1 : $val'); 
  }); 

  final streamListener2 = stream.where((val)=> val % 2 == 1).listen((val){
    print('Listener 2 : $val'); 
  }); 

  //데이터가 들어오는 순간 변형할 수 있다는 특징! 
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);

/* Listener 2 : 1
Listener 1 : 2
Listener 2 : 3
Listener 1 : 4
Listener 2 : 5 
 */

}