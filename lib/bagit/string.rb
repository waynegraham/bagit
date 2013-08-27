# Some mixed in functionality for String
class String

  # Wrap a string to lines of a specified width. All existing newlines
  # are not guaranteed to be preserved
  def wrap(width)
    source = self.dup
    ( source.length < width ) ? source : source.scan(/.{1,#{width}}/).join("<wbr>")
  end

  # Indent each line of a string by n spaces
  def indent(n)
    indent = ' ' * n
    gsub '\n', "\n#{indent}"
  end

end
