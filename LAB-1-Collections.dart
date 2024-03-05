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
}
