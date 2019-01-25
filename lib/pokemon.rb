class Pokemon
  attr_accessor :id, :name, :type, :db
    @@all = []
    
  def initialize (id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end
  
  def self.all
  @@all
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find (id, db)
      db.execute("SELECT * FROM pokemon WHERE id =?", id).flatten.each do |pokemon|
        attribute[0] = id
        attribute[1] = name
        attribute[3] = type
      end
    # binding.pry
 
  end
end
