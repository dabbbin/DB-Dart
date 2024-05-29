import 'dart:async';

//To Do 
//calculate(2) 다 끝내고 calculate(4) 를 실행시키길 원함 
void main(List<String> args) {
    playAllStream().listen((val){ 
      print(val);     
    });  
}

Stream<int> playAllStream() async*{
  yield* calculate(1); //yield* :: 해당 스트림의 모든 값을 가져올 때까지 기다린다. 
  yield* calculate(1000);  
}
 
Stream<int> calculate(int number) async*{
  for(int i = 0; i < 5; i ++){
    yield i * number; //yield 지속적으로 리턴해줌 
  
  await Future.delayed(Duration(seconds: 1)); 
  }  
} 