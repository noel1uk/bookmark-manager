require 'pg'

class Link

  def self.all
    ["https://www.google.co.uk/"]
    # This basically means that the Link class (object) will
    # always have a method that returns an array with instances
    # of itself (instances of the Link class)

    # Output a table of current connections to the DB
    conn = PG.connect( dbname: 'bookmark_manager' )
    conn.exec( "SELECT * FROM links" ) do |result|
      puts " #{result}    id | url         "
      result.each do |row|
        puts " %7d | %-16s | #{row} "
          row.values_at('id', 'url')
      end
    end
  end


  def initialize

  end
end
