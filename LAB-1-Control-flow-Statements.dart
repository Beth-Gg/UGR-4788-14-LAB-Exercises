void main() {

  var day = 1;
  switch (day) {
    case '1':
      print("monday");
      break;
    case '2':
      print("tuesday");
      break;
    case '3':
      print("wednesday");
      break;
    case '4':
      print("thursday");
      break;
    case '5':
      print("friday");
      break;
    case '6':
      print("saturday");
      break;
    case '7':
      print("sunday");
      break;

    default:
      print ("Invalid date!");

  var list = [];

  for (var i = 0; i < 10; i++) {
    if(i < 2){
      list.add(i);
      print(list[i]);
      continue;
    }
    list.add(list[i-1] + list[i-2]);
    print(list[i]);
  }
}
