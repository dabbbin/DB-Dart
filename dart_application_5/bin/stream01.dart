//stream 은 다트에서 기본 제공이 안되어서 패키지 필요 
import 'dart:async';

void main(List<String> args) {
  //Async Project - Stream 
  //stream - 값을 지속적으로 받을 수 있다. 
  //yield  

  final controller = StreamController(); 
  final stream = controller.stream; 

  final streamListener1 = stream.listen((val){
      print('Listener 1 : $val'); 
  }); 

  controller.sink.add(1);  
  controller.sink.add(2);  
  controller.sink.add(3);  
  controller.sink.add(4);  
  controller.sink.add(5);  
  controller.sink.add(6);  
  controller.sink.add(7);  
}