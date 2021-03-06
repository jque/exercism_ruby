module BookKeeping
  VERSION = 3
end

# 
# Original solution 
# 
# class Hamming
#   def self.compute dna1="", dna2=""
#     raise ArgumentError unless dna1.length == dna2.length
#
#     (0..(dna1.length-1)).inject(0) do |memo, index|
#        memo += 1 if dna1[index] != dna2[index]
#        memo
#     end
#   end
# end

# 
# Improved solution
# 
class Hamming
  def self.compute dna1="", dna2=""
    raise ArgumentError unless dna1.length == dna2.length

    (0..(dna1.length-1)).count do |index|
      dna1[index] != dna2[index]
    end
  end
end
