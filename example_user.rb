=begin
class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end
  def formatted_email
    "#{@name} #{@email}"
  end
end
s = User.new
p s.formatted_email
=end


class User
  attr_accessor :name ,:email
  def initialize(attributes={})
  	@first_name = attributes[:first_name]
  	@last_name = attributes[:last_name]
  end

  def full_name
     "#{@first_name} #{@last_name}"
  end
  def alphabetical_name
  	"#{@last_name} #{@first_name}"
  end

end
user = User.new(first_name: "kanthi", last_name: "Navya")
user.full_name.split == user.alphabetical_name.split(' ').reverse