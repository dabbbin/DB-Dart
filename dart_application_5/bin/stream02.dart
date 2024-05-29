import 'dart:async';

void main(List<String> args) {
  final controller = StreamController();

  //기본적으로 한 번만 리스닝할 수 있는 리소스를 가져온다. 
  // final stream = controller.stream; 
  //따라서 Broadcast 필요 
  final stream = controller.stream.asBroadcastStream(); 

  final streamListener1 = stream.listen((val){
    print('Listener 1 : $val'); 
  }); 

  final streamListener2 = stream.listen((val){
    print('Listener 2 : $val'); 
  }); 

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);


}