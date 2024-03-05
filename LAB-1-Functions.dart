void main() {
  int average(List lisst) {
    num sum = 0;
    for (int i = 0; i < lisst.length; i++) {
      sum = sum + lisst[i];
    }
    num avrg = sum / (lisst.length);
    return avrg;
  }
}
