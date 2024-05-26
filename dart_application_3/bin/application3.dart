void main(List<String> args) {
  Map<String, String> harryPotter = {
    'Harry Potter' : '해리포터',
    'Ron Weasley' : '론 위즐리',
    'Hermione Granger' : '헤르미온느 그레인저',
  }; 

  //실무에서 잘 사용하진 않음 
  final newHarryPotter  = harryPotter.map(
    (Key, value) => MapEntry(
      'Harry Potter Character $Key',
      '해리포터 캐릭터 $value') 
    );  

  print(newHarryPotter); 

  final keys = harryPotter.keys.map((x) => 'HPC $x').toList(); 
  final vales = harryPotter.values.map((x) => '해리포터 $x').toList(); 
  print(keys); 
  print(vales);
}