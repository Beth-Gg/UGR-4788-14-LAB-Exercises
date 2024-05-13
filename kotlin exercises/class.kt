class BankAccount {
    accountNumber: String,
    balance: Double

    fun deposit (amount: Int){
        var result = accountNumber + amount
    }

    fun withdraw (amount: Int){
        var result = accountNumber - amount
    }

    fun printBalance() {
        print($balance)
    }

    

}