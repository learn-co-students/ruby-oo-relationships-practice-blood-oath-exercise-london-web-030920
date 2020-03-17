class Cult 

  attr_reader :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan

    @@all << self 
  end

  def self.all 
    @@all
  end

  def all_followers
    BloodOath.all.select{|blood_oath| blood_oath.cult == self}
  end

  def recruit_follower(follower)
    BloodOath.new("_2020-03-17_", self, follower)
  end

  def cult_population
    self.all_followers.length
  end

  def self.find_by_name(name) 
    self.all.find{|cult| cult.name == name }
  end

  def self.find_by_location(name) 
    self.all.find{|cult| cult.location == name }
  end

  def self.find_by_year(year) 
    self.all.find{|cult| cult.founding_year == year }
  end

  def average_age 
    followers_ages = self.all_followers.map{|blood_oath| blood_oath.follower.age}.sum.to_f
    followers = self.all_followers.map{|blood_oath| blood_oath.follower }.length
    followers_ages / followers
  end

end