# Write a setup script that runs when the application boots,
# which calls DatabaseConnection.setup with the correct database for the
# environment.
require_relative 'database_connection'
if ENV["ENVIRONMENT"] == 'test'
  DatabaseConnection.setup('bookmark_manager_test')
else
  DatabaseConnection.setup('bookmark_manager')
end
