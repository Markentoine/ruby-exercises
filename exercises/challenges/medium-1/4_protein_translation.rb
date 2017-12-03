class InvalidCodonError < StandardError; end

module Translation
  CODON_PROTEIN_TABLE =
    {
      'AUG' => 'Methionine',    'UUA' => 'Leucine',
      'UUG' => 'Leucine',       'UCU' => 'Serine',
      'UCC' => 'Serine',        'UCA' => 'Serine',
      'UCG' => 'Serine',        'UAU' => 'Tyrosine',
      'UAC' => 'Tyrosine',      'UGU' => 'Cysteine',
      'UGC' => 'Cysteine',      'UGG' => 'Tryptophan',
      'UUU' => 'Phenylalanine', 'UUC' => 'Phenylalanine',
      'UAA' => 'STOP',          'UAG' => 'STOP',
      'UGA' => 'STOP'
    }.freeze

  def self.of_codon(codon)
    CODON_PROTEIN_TABLE.fetch(codon) { fail InvalidCodonError }
  end

  def self.of_rna(strand)
    codons = strand.scan(/.{3}/).take_while { |codon| of_codon(codon) != 'STOP' }
                   .map { |codon| of_codon(codon) }
  end
end
