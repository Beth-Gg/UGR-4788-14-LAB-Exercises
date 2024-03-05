int max = 0;
int Maximum(List a) {
  if (a.length == 0 ) {
    throw Exception('List is Empty');
  }
  for (int i = 0; i < a.length; i++) {
      if (a[i] > max) {
        max = a[i];
      }
    }
    return max;
}

void main() {
  try {
    Maximum([]);
  } catch (e) {
    print('An exception occurred: $e');
  }

  void divideNumbers(int a, int b) {
  if (b == 0) {
    throw ArgumentError('Cannot divide by zero');
  }

  int result = a ~/ b;
  print('Result: $result');
}

  try {
    divideNumbers(10, 0);
  } catch (e) {
    if (e is ArgumentError) {
      print('ArgumentError occurred: $e');
    } else {
      print('An exception occurred: $e');
    }
  }

  
}
