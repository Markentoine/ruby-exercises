class Poker
  def initialize(hands_arr)
    @hands = hands_arr.each_with_object([]) do |hand, container|
      container << Hand.new(hand)
    end
    @highest_rank_in_game = hands.max_by(&:rank).rank
  end

  def best_hand
    best_hands = hands.select { |h| h.rank == highest_rank_in_game }
    best_hands.size == 1 ? [best_hands.first.str] : resolve_ties(best_hands)
  end

  private

  attr_reader :hands, :highest_rank_in_game

  # hands are compared card by card until the best hand(s) is found
  # this is a bit clumsy, essentially comparing to your own value
  def resolve_ties(hands)
    best_hands = hands.select do |hand|
      hand.card_values_ord_by_scoring_significance ==
        highest_card_values_in_game
    end

    best_hands.map(&:str)
  end

  def highest_card_values_in_game
    @hands.map(&:card_values_ord_by_scoring_significance).max
  end
end

module Rankable
  RANKS = { high_card: 1, one_pair: 2, two_pairs: 3,
            three_of_a_kind: 4, straight: 5, flush: 6,
            full_house: 7, four_of_a_kind: 8, straight_flush: 9 }

  def rank
    RANKS[pattern]
  end
end

class Hand
  include Rankable
  attr_reader :cards, :str, :card_values_ord_by_scoring_significance

  def initialize(cards_str)
    @cards = cards_str.each_with_object([]) do |card, container|
      container << Card.new(card)
    end
    @str = cards_str
    @pattern = pattern
  end

  def card_values_ord_by_scoring_significance
    if pattern_type_sequential?
      card_values_ord_desc
    elsif pattern_type_multiple_of_card?
      card_values_ord_by_pattern
    end
  end

  def pairs_values
    card_values.select { |value| card_values.count(value) == 2 }
               .uniq.sort.reverse
  end

  def pattern_type_sequential?
    [:high_card, :straight, :flush, :straight_flush].include? pattern
  end

  def pattern_type_multiple_of_card?
    [:one_pair, :two_pairs, :three_of_a_kind, :full_house, :four_of_a_kind]
      .include? pattern
  end

  def card_suits
    cards.map(&:suit)
  end

  def cards_in_sequential_order?
    card_values_for_ace_low = card_values.map { |v| v == 14 ? 1 : v }.sort
    potential_sequence_format = (card_values.min..card_values.max).to_a
    potential_ace_low_sequence_format = [1] + card_values[0..3]

    card_values == potential_sequence_format ||
      card_values_for_ace_low == potential_ace_low_sequence_format
  end

  private

  def pattern
    if cards_in_sequential_order?
      cards_of_same_suit? ? :straight_flush : :straight
    elsif cards_of_same_suit?
      :flush
    elsif n_of_count_in_hand?([2, 3, 4])
      pattern_type_multiple_of_card
    else
      :high_card
    end
  end

  def count_distinct_card_values_in_hand
    card_values.uniq.size
  end

  def cards_of_same_suit?
    card_suits.uniq.size == 1
  end

  # the method may be passed an Integer or an Array of Integers
  def n_of_count_in_hand?(counts)
    card_values.any? do |card|
      if counts.is_a?(Array)
        counts.include? card_values.count(card)
      else
        card_values.count(card) == counts
      end
    end
  end

  def card_values
    cards.map(&:value).sort
  end

  def card_values_ord_desc
    card_values.reverse
  end

  def card_values_ord_by_freq_desc
    card_values.sort_by { |value| card_values.count(value) }.reverse
  end

  def card_values_ord_by_pattern
    if pattern == :one_pair
      card_values_ord_one_pair
    elsif pattern == :two_pairs
      card_values_two_pairs
    elsif pattern == :three_of_a_kind
      card_values_ord_three_of_a_kind
    elsif pattern == :full_house
      # this method neatly returns the values in the required format as well
      card_values_ord_by_freq_desc
    elsif pattern == :four_of_a_kind
      card_values_ord_four_of_a_kind
    end
  end

  def card_values_ord_one_pair
    pair = card_values_ord_by_freq_desc[0..1]
    kickers = card_values_ord_by_freq_desc[2..4].sort.reverse
    pair + kickers
  end

  def card_values_two_pairs
    high_pair, low_pair = pairs_values
    kicker_card = card_values.reject do |r|
      [high_pair, low_pair].include?(r)
    end
    [high_pair, high_pair, low_pair, low_pair, kicker_card]
  end

  def card_values_ord_three_of_a_kind
    triplet = card_values_ord_by_freq_desc[0..2]
    kickers = card_values_ord_by_freq_desc[3..4].sort.reverse
    triplet + kickers
  end

  def card_values_ord_four_of_a_kind
    quadruplet = card_values_ord_by_freq_desc[0..3]
    quadruplet + [card_values_ord_by_freq_desc.last]
  end

  def pattern_type_multiple_of_card
    if n_of_count_in_hand?(3)
      n_of_count_in_hand?(2) ? :full_house : :three_of_a_kind
    elsif n_of_count_in_hand?(4) && count_distinct_card_values_in_hand == 2
      :four_of_a_kind
    elsif count_distinct_card_values_in_hand == 4
      :one_pair
    else
      :two_pairs
    end
  end
end

class Card
  CARD_VALUES = { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
                  '8' => 8, '9' => 9, 'T' => 10, 'J' => 11, 'Q' => 12,
                  'K' => 13, 'A' => 14 }
  CARD_SUITS = { 'H' => 'Hearts', 'D' => 'Diamonds', 'C' => 'Clubs',
                 'S' => 'Spades' }

  attr_reader :value, :suit

  def initialize(card_as_str)
    @value = CARD_VALUES[card_as_str[0]]
    @suit = CARD_SUITS[card_as_str[1]]
  end
end
