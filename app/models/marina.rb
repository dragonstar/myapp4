class Marina < ActiveRecord::Base
  has_many :managers, :class_name => 'User'
  has_many :boatowners, :class_name => 'User'


  attr_accessible :address, :address2, :boatowners, :country, :county, :managers, :name, :town, :nation
  has_friendly_id :name, :use_slug => true


  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

  def to_param
    self.name.downcase.gsub(' ', '-')
  end


end
