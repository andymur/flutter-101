void main(List<String> args) {
  
  List<int> l2 = List.filled(100, 0);
  List<int> list = [];
  
  
  //i = 0; 
  //for i <= 100 do 
  for (int i = 0; i < 100; i++) {
    l2[i] = i + 1;
  }

  for (int i = 1; i <= 100; i++) {
    list.add(i);
  }
  
  //print(5 % 3);
  //print(l2);

  // 3 -> foo
  // 5 -> bar
  // 15 -> foobar
  
  for (int i = 0; i < 100; i++) {
    if (list[i] % 3 == 0 && list[i] % 5 == 0) {
        print("foobar ${list[i]}");
    } else if (list[i] % 3 == 0) {
      print("foo ${list[i]}");
    }
  }
  
}
