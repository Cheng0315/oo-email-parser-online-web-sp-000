# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  @@all = nil

  def initialize(email)
    @@all = email.split(" ")
  end

  def parse
    @@all.collect {|email|
      email[-1] == "," ? email.slice(0, email.length - 1) : email
    }.uniq
  end
end
