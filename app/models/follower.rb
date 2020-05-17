class Follower 

    attr_reader :name, :age, :life_motto, :all_cults
  
    @@all = []
  
    def initialize(name, age, life_motto)
      @name = name
      @age = age
      @life_motto = life_motto
  
      @@all << self 
    end
  
    def self.all 
      @@all
    end

    def all_bload_oaths 
      BloodOath.all.select{|blood_oath| blood_oath.follower == self}
    end

    def all_cults
     self.all_bload_oaths.map{|blood_oath| blood_oath.cult}
    end

    def join_cult(cult)
      BloodOath.new("_2020-03-17_", cult, self)
    end

    def self.of_a_certain_age(num)
      self.all.select{|follower| num <= follower.age}
    end 

    def self.most_active 
      follower_bloadoath = BloodOath.all.max_by {|blood_oath| blood_oath.follower.all_cults}
      follower_bloadoath.follower.name
    end

 
  
end