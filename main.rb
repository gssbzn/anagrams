# require 'benchmark' uncomment for benchmark execution

require_relative 'process_files'

# File read, default or param file
file_name = 'wl.txt'
file_name = ARGV[0].to_s unless ARGV[0].nil?

# Benchmarked execution
# dictionary = {}
# time = Benchmark.realtime {
#   Process imput file and determine anagrams
#   dictionary = ProcessFiles.process_input file_name
# }
#puts "Elapsed time: #{time}"

# Process imput file and determine anagrams
dictionary = ProcessFiles.process_input file_name

# Write out anagrams lists
ProcessFiles.process_output 'anagrams.txt', dictionary

# Write out ananagrams lists
ProcessFiles.process_output 'ananagrams.txt', dictionary, false

__END__
