class Book
  def title
    return @title
  end
  def title=(book_title)
    non_caps = ["a", "an", "the", "at", "by", "for", "in", "of","on","over", "to", "up", "and", "as", "but", "it", "or", "and", "nor"]
    titleized = book_title.split.map {|current_word| non_caps.include?(current_word) ? current_word : current_word.capitalize}
    titleized[0] = titleized[0].capitalize
    title_out = titleized.join(" ")
    @title = title_out
  end
end