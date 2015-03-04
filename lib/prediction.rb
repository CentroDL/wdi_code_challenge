class Prediction


  def self.email(fname, lname, domain)
    # "tywinn.lannister@ironthrone.com"
    if domain == "ironthrone.com"
      first_name_dot_last_name fname, lname, domain
    elsif domain == "direwolves.com"
      first_name_dot_last_initial fname, lname, domain
    elsif domain == 'littlefinger.com'
      first_initial_dot_last_initial fname, lname, domain
    else
      # "this will call all methods and return them as an array"
    end
  end


  def self.first_name_dot_last_name(fname, lname, domain)
    "#{fname.downcase}.#{lname.downcase}@#{domain.downcase}"
  end

  def self.first_name_dot_last_initial(fname, lname, domain)
    "#{fname.downcase}.#{lname.downcase[0]}@#{domain.downcase}"
  end

  def self.first_initial_dot_last_name(fname, lname, domain)
    "#{fname.downcase[0]}.#{lname.downcase[0]}.#{domain.downcase}"
  end

  def self.first_initial_dot_last_initial(fname, lname, domain)

  end



end

