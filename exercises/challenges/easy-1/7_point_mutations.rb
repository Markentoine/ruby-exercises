class DNA
  def initialize(original_strand)
    @original_strand = original_strand
  end

  def hamming_distance(test_strand)
    effective_length = [@original_strand.size, test_strand.size].min
    distance = 0
    (0..(effective_length - 1)).each do |index|
      distance += 1 if @original_strand[index] != test_strand[index]
    end
    distance
  end
end
