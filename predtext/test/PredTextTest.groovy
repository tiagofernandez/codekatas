import spock.lang.*

class PredTextTest extends Specification {
  
  def predText =  new PredText()
  
  def "get digits"() {
    expect:
    predText.getDigits(word) == digits
    
    where:
    word << ['hello', 'sale']
    digits << ['43556', '7253']
  }
  
  def "get suggestions"() {
    when:
    def suggestions = predText.getSuggestions(digits)
    
    then:
    words.each { suggestions.contains(it) }
    
    where:
    digits << ['43556', '7253']
    words << [
      ['hello', 'geklo', 'gekko'],
      ['sale', 'rake', 'pale', 'ralf']
    ]
  }
}