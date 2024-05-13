fun main {
    print("Enter number : ")
    val number = readLine()!!

    if (number > 90 && number < 100 ) {
        result = 'A'
    }
    elif (number > 80 && number < 90) {
        result = 'B'
    }
    elif (number > 70 && number < 80) {
        result = 'C'
    }
    elif (number > 60 && number < 70) {
        result = 'D'
    }
    elif (number < 60) {
        result = 'F'
    }

    print("Here is your result: $result")

}