DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/lib/reporter.db")

class User
    include DataMapper::Resource

    property :id,           Serial
    property :name,        String
    property :email,        String
    property :login,        String
    property :position,        String
    property :password,        String
    property :created_at,   DateTime

end

  DataMapper.auto_upgrade!


                       #dm_do_adapter
                       # dm-sqlite-adapter
                       # highline