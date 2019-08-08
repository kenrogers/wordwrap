class Wrapper < ApplicationRecord
  def self.wrap(text, col)
    # Initialize formatted string variable, which will contain our original string with line breaks inserted where necessary
    formatted_string = ""
    # Split the given string up at the spaces
    split_string = text.split(" ")
    # Set the starting line length
    line_length = 0
    # Add each word until we hit the desired line length
    for word in split_string do
      # Set the line length to be equal to the current length plus the length of the word to be added
      # The +1 at the end is to account for the space after the word
      line_length = line_length + word.length + 1
      # If adding the current word will not break the column limit, add it with a space
      if line_length < col
        formatted_string << "#{word} "
      else
        # If it will break our column limit, append a line break to it, then add
        formatted_string << "<br/>#{word} "
        # Reset the line length
        line_length = 0 + word.length
      end
    end
    # If there are extra spaces, get rid of them
    if formatted_string.include? " <br/>" then formatted_string.gsub! " <br/>", "<br/>" end
    # If the first characters are a line break, remove it
    if formatted_string[0,5] == "<br/>" then formatted_string[0,5] = '' end
    # Remove pesky trailing whitespace
    return formatted_string.strip.html_safe
  end
end
