import 'dart:async';

void main(List<String> args) {
  final List<Map<String, String>> people = [
    {
      'name' : '지수', 
      'group' : '블랙핑크', 
    }, 
    {
      'name' : '로제', 
      'group' : '블랙핑크', 
    },
    {
      'name' : '슈가', 
      'group' : 'bts', 
    },
    {
      'name' : '뷔', 
      'group' : 'bts',  
    },
  ];

  final parsedPeople = people.map(
    (x) => Person(
      name: x['name']!, // ! : 값이 무조건 존재한다. ! 
      group: x['group']!
      )
  ).toList();

  print(parsedPeople); //[Instance of 'Person', Instance of 'Person', Instance of 'Person', Instance of 'Person']

  for(Person parson in parsedPeople){
    print(parson.name);
    print(parson.group); 
  }

  final bts = parsedPeople.where(
    (x) => x.group == 'bts', 
  );

//위 두 번의 작업을 한 번에 
  final result = people.map(
    (x) => Person(
      name: x['name']!,
      group: x['group']!  
    )
  ).where((x) => x.group == 'bts')
    .fold<int>(0, (prev,next) => prev + next.name.length);

  print(result); 
} 

 
  

  //List<Map<>>(JSON) -> 클래스로 변경 
  class Person { 
    final String name;
    // final String? name; //이건 안되나? 
    final String group; 

    Person({
      required this.name, 
      required this.group, 
    }); 

    @override
    String toString(){
    return 'Person(name: $name, group: $group)'; 
  }
  }

  