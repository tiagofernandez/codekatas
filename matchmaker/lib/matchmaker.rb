class MatchMaker
  
  def get_best_matches(members, current_user, sf)
    matches = {}
    current_member = find_member(members, current_user)
    current_answers = get_answers(current_member)
    members.each do |member|
      if potential_match?(current_member, member)
        answers = get_answers(member)
        count = count_matches(current_answers, answers)
        matches[get_name(member)] = count if count >= sf
      end
    end
    return matches.sort { |a, b| -(a[1] <=> b[1]) }.collect { |elem| elem[0] }
  end
  
  private

  def potential_match?(member_a, member_b)
    get_date(member_a) == get_gender(member_b) and get_gender(member_a) == get_date(member_b)
  end

  def find_member(members, name)
    result = members.select { |member| get_name(member) == name }
    raise "Member not found: #{name}" if result.length == 0
    raise "Duplicated member: #{name}" if result.length > 1
    return result[0]
  end
  
  def count_matches(expected_answers, actual_answers)
    count = 0
    expected_answers.each_index do |i|
      count += 1 if expected_answers[i] == actual_answers[i]
    end
    return count
  end
  
  def get_name(member)
    member.split[0]
  end
  
  def get_gender(member)
    member.split[1]
  end
  
  def get_date(member)
    member.split[2]
  end
  
  def get_answers(member)
    tokens = member.split
    tokens[3..tokens.length]
  end
    
end