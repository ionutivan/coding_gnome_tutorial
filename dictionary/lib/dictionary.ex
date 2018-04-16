defmodule Dictionary do
  def random_word() do
    word_list()
    |> Enum.random()
  end

  def word_list do
    "assets/words.txt"
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def len([]), do: 0
  def len([ _head | tail]), do: 1 + len(tail)
  def sum([]), do: 0
  def sum([ head | tail]), do: head + sum(tail)
  def square([]), do: []
  def square([ head | tail ]), do: [ head*head | square(tail) ]
  def sum_pairs([]), do: 0
  def sum_pairs([ head1, head2 | tail ]), do: [ head1+head2 | sum_pairs(tail) ]
  def even_length([_head1, head2 |_]), do: head2 == nil
  
end
