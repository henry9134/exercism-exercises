class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(']:', 2).last.strip
  end

  def log_level
    @line.split(':', 2).first[1..-2].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
