Future <int> add(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));
  return(a + b);
}
void main() async{
  await (add(3,4)).then((value) => print("Their sum is $value"));

  future <void> add(int a, int b) async {
  await future.delayed(Duration(seconds: 3));
  print(a + b);
  }
  void funct() async{
    await (add(3,4));
  }
}
