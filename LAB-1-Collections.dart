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

    List lst1 = [];
  List removeDuplicates(List lst){
    for (int i=0; i<lst.length; i++){
      if ((lst1.contains(lst[i]))) {
        continue;
      }
      else{
        lst1.add(lst[i]);
      }
      }
    return lst1 ;
    }
}
