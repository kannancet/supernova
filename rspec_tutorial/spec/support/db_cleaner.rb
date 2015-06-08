RSpec.configure do |config|
  config.before :each do
    ActiveRecord::Base.connection.tap do |connection|
      %w(books).each { |table| connection.execute("DELETE FROM #{table}") }
    end
  end
end