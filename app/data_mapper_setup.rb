env = ENV["RACK_ENV"] || "developement"
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")
DataMapper.finalize