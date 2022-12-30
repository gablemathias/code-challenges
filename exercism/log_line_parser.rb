class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(":")[-1].strip
  end

  def log_level
    @line.match(/\[\w*\]/).to_s.gsub(/[\[\]]/,"").downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
