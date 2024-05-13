fun main(args: Array<String>) {
    var lister : Array = [1,2,3,4,5]

    for i in lister {
        if i % 2 == 0 {
            print(i)
        }
        elif i == 5 {
            print("Max is $i")
        }
    }
    print ("Average is: 3")

}