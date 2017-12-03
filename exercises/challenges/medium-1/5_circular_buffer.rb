require 'pry'
class CircularBuffer
  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end

  def initialize(size)
    @collection = []
    @max_size = size
    @index_of_oldest_value = 0
  end

  def read
    raise BufferEmptyException if collection.empty?
    value = collection.delete_at(index_of_oldest_value)
    @index_of_oldest_value = 0 unless collection[index_of_oldest_value]
    value
  end

  def write(object)
    raise BufferFullException if collection_full?
    collection << object unless object.nil?
  end

  def write!(object)
    collection_full? ? overwrite_oldest_value(object) : write(object)
  end

  def clear
    @collection = []
  end

  private

  attr_reader :collection, :max_size, :index_of_oldest_value

  def collection_full?
    collection.size == max_size
  end

  def overwrite_oldest_value(object)
    return if object.nil? 
    collection[index_of_oldest_value] = object
    @index_of_oldest_value = collection.index(object) + 1
  end
end
