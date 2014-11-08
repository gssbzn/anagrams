# Test if word b is an anagram of word a
class Anagram
  def self.is_anagram(a, b)
    if a.length != b.length then
      false
    else
      a_temp = a.downcase.chars.sort.join
      b_temp = b.downcase.chars.sort.join
      #puts "'#{a_temp}'==='#{b_temp}' = #{a_temp === b_temp}"
      a_temp === b_temp
    end
  end
end
