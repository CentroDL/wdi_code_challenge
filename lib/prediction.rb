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


  def first_name_dot_last_name(fname, lname, domain)

  end

  def first_name_dot_last_initial(fname, lname, domain)

  end

  def first_initial_dot_last_name(fname, lname, domain)

  end

  def first_initial_dot_last_initial(fname, lname, domain)

  end



end

