result = []
ARGV.each do |arg|
    # skip if not integer
    next unless arg =~ /^-?[0-9]+$/

    # convert to integer and add to result
    result << arg.to_i
end

# sort the result
result.sort!

puts result

