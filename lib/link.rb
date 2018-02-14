require 'pg'

class Link

  def self.all
    result = DatabaseConnection.query("SELECT * FROM links")
    result.map do |line|
      line['url']
    end
  end

  def self.add(url)
    DatabaseConnection.query("INSERT INTO links (url) VALUES ('#{url}')")
  end
end
