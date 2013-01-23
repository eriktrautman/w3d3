# Restaurant Reviews project by Erik
# 1/23/13
require 'sqlite3'
require 'singleton'

class ReviewsDatabase < SQLite3::Database
  include Singleton

  def initialize
    super("reviews.db")
    self.results_as_hash = true
    self.type_translation = true
  end



end


def get_chef(first_name, last_name = nil)
  params = [first_name]
  unless last_name.nil?
    ln_clause = " AND last_name = ?"
    params << last_name
  end
  query = "SELECT * FROM chefs WHERE first_name = ?#{ln_clause}"
  ReviewsDatabase.instance.execute(query, params)
end