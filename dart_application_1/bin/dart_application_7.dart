void main(List<String> args) {
  sumNumber(10, y: 20); 
  Operation operation = add; 

  int result = operation(10,20,30); 
  print(result);

  operation = subtract; 
  int result_sub = operation(10,20,30); 
  print(result_sub); 

  int result3 = calculate(30, 40, 50, add); 
  print(result3); 
}

//arrow function : 화살표 함수 
void sumNumber(int x, {
  required int y, 
  int z = 30,
}) => print(x + y + z); 

//typedef : 함수와 유사하지만 바디가 없다. 
typedef Operation =int Function(int x, int y, int z); 

//더하기 
int add(int x, int y, int z) => x+ y+ z; 

//빼기 
int subtract(int x, int y, int z) => x - y - z;

//계산 
int calculate(int x, int y, int z, Operation operation){
  return operation(x,y,z); 
}
  
