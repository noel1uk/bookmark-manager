require 'database_connection'
describe DatabaseConnection do
  describe '.setup' do
    it "sets up the connection" do
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')
      DatabaseConnection.setup('bookmark_manager_test')
    end
  end
  describe '.query' do
    it "executes a query to the database" do
      conn = DatabaseConnection.setup('bookmark_manager_test')
      expect(conn).to receive(:exec).with("SELECT * FROM links")
      DatabaseConnection.query("SELECT * FROM links")
    end
  end
end
