# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

attr_accessor :emails

def initialize(emails=nil)
  @emails=emails
end

def comma_parse(string)
  string.split(", ")
end

def space_parse(string)
  string.split(" ")
end

#parse with repeats
def parse_rep
  comma_parse(@emails).collect do |comma_chunk|
    space_parse(comma_chunk)
  end.flatten
end

#parse uniq
def parse
  parse_rep.uniq
end

end
