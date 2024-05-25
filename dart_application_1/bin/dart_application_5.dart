void main(List<String> args) {
  
  //if문 
  int number = 2; 

  if(number % 2 == 0) {
    print('나머지가 0이야'); 
  } else if(number % 3 == 1) {
    print('나머지가 1이야.'); 
  } else {
    print('나머지가 2야'); 
  }

  int number2 = 3; 
  switch(number2 % 3){
    case 0 : 
    print('나머지가 0이야.'); break; 
    case 1 : 
    print('나머지가 1이야'); break;
    case 2 : 
    print('나머지가 2야.'); break; 
  } 

  //for loop  
  for(int i = 0; i < 10; i ++){
    print(i); 
  }

  int total = 0;
  List<int> numbers = [1,2,3,4,5]; 

  for(int i = 0; i < numbers.length; i++){
    total += numbers[i];
  }

  print(total); //15 

  int sum = 0;
  for(int number in numbers){
    sum += number;  
  }
  print(sum);

  total = 0; 
  //while loop  
  while(total < 10){
    total += 1; 
  }
  print(total); 

  total = 0; 
  //do while loop 
  do {
    total += 1; 
  } while(total < 10); 

  print(total); 

  
}