class Url < ActiveRecord::Base
  attr_accessible :long 
  
  #　列名変更【へんこう】する
  HUMANIZED_ATTRIBUTES = {
    :long => "Link",
  }
  
  def self.human_attribute_name(attr)
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
  
  validates_presence_of :long, :message => 'cannot be blank!'
  
  def self.returnId
    sql = "SELECT COUNT(*) FROM urls;"
    return find_by_sql(sql)
  end
end
