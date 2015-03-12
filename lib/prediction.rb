class Prediction

  attr_accessor :f_name, :l_name, :domain

  def initialize(f_name, l_name, domain)
    @f_name = f_name
    @l_name = l_name
    @domain = domain
  end

  def email()
    # "tywinn.lannister@ironthrone.com"
    if @domain    == "ironthrone.com"
      first_name_dot_last_name
    elsif @domain == "direwolves.com"
      first_name_dot_last_initial
    elsif @domain == 'littlefinger.com'
      first_initial_dot_last_initial
    else
      possible_emails = []
      possible_emails << first_name_dot_last_name
      possible_emails << first_name_dot_last_initial
      possible_emails << first_initial_dot_last_name
      possible_emails << first_initial_dot_last_initial
      # possible_emails
    end
  end

  def first_name_dot_last_name
    "#{f_name.downcase}.#{l_name.downcase}@#{domain.downcase}"
  end

  def first_name_dot_last_initial
    "#{f_name.downcase}.#{l_name.downcase[0]}@#{domain.downcase}"
  end

  def first_initial_dot_last_name
    "#{f_name.downcase[0]}.#{l_name.downcase}@#{domain.downcase}"
  end

  def first_initial_dot_last_initial
    "#{f_name.downcase[0]}.#{l_name.downcase[0]}@#{domain.downcase}"
  end

end#Prediction

