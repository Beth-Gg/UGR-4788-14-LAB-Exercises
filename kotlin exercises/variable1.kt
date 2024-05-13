fun main(args: Array<String>) {
    print("Enter first number: ")
    val firstNumber:Int = readLine()!!

    
    print("Enter second number: ")
    val secondNumber:Int = readLine()!!
    
    
    print("Enter operation: ")
    val operator = readLine()!!

    if (operator == '+') {
        result = firstNumber + secondNumber
    }
    elif (operator == '-') {
        result = firstNumber - secondNumber
    }
    elif (operator == '*') {
        result = firstNumber * secondNumber
    }
    elif (operator == '/') {
        result = firstNumber / secondNumber
    }
    
    
    println("Your result: $result")
}