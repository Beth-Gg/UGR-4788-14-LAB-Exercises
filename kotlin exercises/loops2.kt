fun main (length: Int) : String {
    val allowedChars = ('A'..'Z') + ('a'..'z') + ('0'..'9')
    return (1..8)
        .map { allowedChars.random() }
        .joinToString("")
}