require 'pg'

class Link

  def self.all
    # ["https://www.google.co.uk/"]
    # This basically means that the Link class (object) will
    # always have a method that returns an array with instances
    # of itself (instances of the Link class)
    # Output a table of current connections to the DB
    if ENV["ENVIRONMENT"] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      conn = PG.connect( dbname: 'bookmark_manager' )
    end
    result = conn.exec( "SELECT * FROM links" )
    result.map do |line|
      line['url']
    end
  end

  def self.add(url)
    url = url
    conn = PG.connect( dbname: 'bookmark_manager_test' )
    conn.exec( "INSERT INTO links (url) VALUES (#{url})")
  end
end
