int max = 0;
void main(){
  num maximum(List lst) {
    for (int i = 0; i < lst.length; i++) {
      if (lst[i] > max) {
        max = lst[i];
      }
    }
    return max;
  }

    void mapList(Map<String, String> map){
    for (var i in map.keys){
      print("Key: $i");
      var val = map[i];
      print("Value: $val");
    }
  }
}
