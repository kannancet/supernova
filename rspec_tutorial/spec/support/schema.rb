require 'active_record'
ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

ActiveRecord::Schema.define do
  self.verbose = false

  create_table :books, :force => true do |t|
    t.string :name
    t.timestamps
  end
end