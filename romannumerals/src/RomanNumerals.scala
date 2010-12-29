import scala.collection.mutable.ArrayBuffer

object RomanNumerals {

  implicit def romanInt(number: Int): RomanInt = new RomanInt(number)
  implicit def romanString(number: String): RomanString = new RomanString(number)

  def fromDigit(number: Int): String = number.toRoman
  
  def toDigit(number: String): Int = number.toDigit
  
}

class RomanInt(number: Int) {
  
  val ones = List("", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX")
  val tens = List("", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC")
  val hundreds = List("", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM")
  val thousands = List("", "M", "MM", "MMM")

  def toRoman(): String = thousands(part(1000)) + hundreds(part(100)) + tens(part(10)) + ones(part(1))

  private def part(digit: Int): Int = number % (digit * 10) / digit

}

class RomanString(number: String) {
  
  val romanToDigit = Map(
    'I' -> 1,
    'V' -> 5,
    'X' -> 10,
    'L' -> 50,
    'C' -> 100,
    'D' -> 500,
    'M' -> 1000
  )
  
  def toDigit(): Int = {
    val values = number.foldLeft(ArrayBuffer[Int]()) { (buffer, letter) =>
      buffer += romanToDigit(letter)
    }
    return values.zipWithIndex.foldLeft(0) { case (sum, (value, index)) =>
      val (previousIndex, nextIndex) = (index - 1, index + 1)
      val (hasPrevious, hasNext) = (values.isDefinedAt(previousIndex), values.isDefinedAt(nextIndex))
      
      if (hasNext && values(nextIndex) > value)
        sum + values(nextIndex) - value
      else if (!hasPrevious || values(previousIndex) >= value)
        sum + value
      else
        sum
    }
  }
}