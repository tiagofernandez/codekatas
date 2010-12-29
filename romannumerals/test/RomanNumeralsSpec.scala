import org.scalatest.Spec

class RomanNumeralsSpec extends Spec {
  
  val testData = Map(
    158 -> "CLVIII",
    1990 -> "MCMXC",
    1999 -> "MCMXCIX",
    2008 -> "MMVIII"
  )

  it("should convert digits to roman numerals") {
    testData.foreach { case (digit, romanNumeral) =>
      expect(romanNumeral) { RomanNumerals.fromDigit(digit) }
    }
  }
  
  it("should convert roman numerals to digits") {
    testData.foreach { case (digit, romanNumeral) =>
      expect(digit) { RomanNumerals.toDigit(romanNumeral) }
    }
  }
}