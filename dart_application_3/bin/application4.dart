void main(List<String> args) {
  List<Map<String, String>> people = [
    {
      'name' : '로제', 
      'group' : '블랙핑크',
    },
    {
      'name' : '지수', 
      'group' : '블랙핑크',
    },
    {
      'name' : 'RM', 
      'group' : 'BTS', 
    },
    {
      'name' : '뷔',
      'group' : 'BTS', 
    },
  ];

  print(people); 

  final blackPink = people.where((x) => x['group'] == '블랙핑크'); 
  final BTS = people.where((x) => x['group'] == 'bts'); 

  print(blackPink);   
  print(BTS);     
} 