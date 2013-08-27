# Some mixed in functionality for String
class String

  # Wrap a string to lines of a specified width. All existing newlines
  # are not guaranteed to be preserved
  def wrap(width)
    source = self.dup
    source.split("\n").collect do |line|
      line.length > line_width ? line.gsub(/(.{1,#{line_width}})(\s+|$)/, "\\1\n").strip : line
    end * "\n"
  end

  # Indent each line of a string by n spaces
  def indent(n)
    indent = ' ' * n
    gsub '\n', "\n#{indent}"
  end

end
