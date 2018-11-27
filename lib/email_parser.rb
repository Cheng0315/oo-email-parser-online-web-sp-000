# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  @@all = []
  @@emails = nil

  def initialize(email)
    @@emails = email
  end

  def parse
    @@all = @@emails.split(" ")
    @@all.collect do |email|
      delete if email[-1] == ","
    end
  end
end
