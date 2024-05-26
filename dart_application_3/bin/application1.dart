void main(List<String> args) {
  List<String> blackPink = ['로제', '리사', '제니', '지수', '로제']; 

  print(blackPink); 
  print(blackPink.asMap()); //{0: 로제, 1: 리사, 2: 제니, 3: 지수} 
  print(blackPink.toSet()); //{로제, 리사, 제니, 지수}

  //Map으로 변환 
  Map blackPinkMap = blackPink.asMap(); 

  print(blackPinkMap.keys.toList()); 
  print(blackPinkMap.values.toList());  

  //Set으로 변환 : '로제' 중복 제거 
  Set blackPinkSet = Set.from(blackPink); 

  print(blackPinkSet.toList());  
}