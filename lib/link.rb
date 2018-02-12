require 'pg'

class Link

  def self.all
    ["https://www.google.co.uk/"]
    # This basically means that the Link class (object) will
    # always have a method that returns an array with instances
    # of itself (instances of the Link class)

    # Output a table of current connections to the DB
    conn = PG.connect( dbname: 'bookmark_manager' )
    result = conn.exec( "SELECT * FROM links" )
    # p result.column_values(1)
    result.each do |line|
      line
    end
  end
  # Gives the result as strings
  # result.map do |line|
  #   line['url']
  # end

  def initialize

  end
end
