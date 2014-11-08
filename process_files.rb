require_relative 'anagram'

class ProcessFiles
  # Process given input file, generates dictionary with anagrams
  def self.process_input(file_name)
    dictionary = {}
    File.open(file_name).each_line do |line|
      line = line.chomp
      is_anagram = false
      dictionary.each_key do |word|
        if Anagram.is_anagram word, line
          dictionary[word] << line
          is_anagram = true
          break
        end
      end
      dictionary[line] = [] unless is_anagram
    end
    dictionary
  end

  # Write output file with anagramas or ananagrams according with params
  def self.process_output(file_name = "out.txt", dictionary = {}, is_anagram = true)
    f = File.open(file_name, 'w')
    dictionary.each do |word, anagrams|
      f.puts "#{word}, #{anagrams.join(', ')}" unless !is_anagram || anagrams.empty?
      f.puts "#{word}" if anagrams.empty? unless is_anagram || anagrams.empty?
    end
    f.close
  end
end
