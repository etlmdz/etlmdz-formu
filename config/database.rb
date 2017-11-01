##
# You can use other adapters like:
#
#   ActiveRecord::Base.configurations[:development] = {
#     :adapter   => 'mysql2',
#     :encoding  => 'utf8',
#     :reconnect => true,
#     :database  => 'your_database',
#     :pool      => 5,
#     :username  => 'root',
#     :password  => '',
#     :host      => 'localhost',
#     :socket    => '/tmp/mysql.sock'
#   }
#
ActiveRecord::Base.configurations[:development] = {
  :adapter   => 'postgresql',
  :database  => 'etlmdz_development',
  :username  => 'postgres',
  :password  => '',
  :host      => 'localhost',
  :port      => 5432

}

#ActiveRecord::Base.configurations[:production] = {
 # Este dato se obtiene con
 # heroku config --app etlmdz-formu | grep HEROKU_POSTGRESQL
# url: <%= ENV['HEROKU_POSTGRESQL_CRIMSON_URL'] %>
#}

postgres = URI.parse(ENV['DATABASE_URL'] || '')

ActiveRecord::Base.configurations[:production] = {
  :adapter  => 'postgresql',
  :encoding => 'utf8',
  :database => postgres.path[1..-1],
  :username => postgres.user,
  :password => postgres.password,
  :host     => postgres.host
}

#configure :production do
#b = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')

# ActiveRecord::Base.establish_connection(
#   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
#   :host     => db.host,
#   :username => db.user,
#   :password => db.password,
#   :database => db.path[1..-1],
#   :encoding => 'utf8'
# )
#end

#module.exports = {
#  client: 'pg',
#  connection: process.env.DATABASE_URL || {
#    host: process.env.DB_HOST,
#    user: process.env.DB_USER,
#    password: process.env.DB_PASSWORD,
#    database: process.env.DB_NAME,
#    ssl: true
#  }
#};

ActiveRecord::Base.configurations[:test] = {
  :adapter   => 'postgresql',
  :database  => 'etlmdz_test',
  :username  => 'root',
  :password  => '',
  :host      => 'localhost',
  :port      => 5432

}

# Setup our logger
ActiveRecord::Base.logger = logger

if ActiveRecord::VERSION::MAJOR.to_i < 4
  # Raise exception on mass assignment protection for Active Record models.
  ActiveRecord::Base.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL).
  ActiveRecord::Base.auto_explain_threshold_in_seconds = 0.5
end

# Doesn't include Active Record class name as root for JSON serialized output.
ActiveRecord::Base.include_root_in_json = false

# Store the full class name (including module namespace) in STI type column.
ActiveRecord::Base.store_full_sti_class = true

# Use ISO 8601 format for JSON serialized times and dates.
ActiveSupport.use_standard_json_time_format = true

# Don't escape HTML entities in JSON, leave that for the #json_escape helper
# if you're including raw JSON in an HTML page.
ActiveSupport.escape_html_entities_in_json = false

# Now we can establish connection with our db.
ActiveRecord::Base.establish_connection(ActiveRecord::Base.configurations[Padrino.env])

# Timestamps are in the utc by default.
ActiveRecord::Base.default_timezone = :utc
