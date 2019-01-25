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
      pokemon = db.execute("SELECT * FROM pokemon WHERE id =?", id)
            pokemon.each do |items|
              pokemon.index = items[0]
              pokemon.name = items[1]
              pokemon.type = items[2]
              
        
        
        binding.pry
        
      end
    # binding.pry
 
  end
end
