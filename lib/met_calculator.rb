# frozen_string_literal: true

require_relative "met_calculator/version"

module MetCalculator
  class Error < StandardError; end
  # Your code goes here...
  
  # converts activity symbol into its respective 'MET' value
  def self.met_for_activity(activity)
    activities = {
      running: 8,
      cycling: 7.5,
      swimming: 5.8
    }

    if not activities.include? activity then
      raise "Activity `#{activity}` not found!"
      return
    end

    return activities[activity].to_f
  end

  # checks if `value` is either an int or a float
  def self.is_number?(value)
    return value.is_a?(Float) || value.is_a?(Integer)
  end
  
  def self.calories(activity, body_mass_kg, time_performing_hours)
    begin
      # Error check
      if not self.is_number? body_mass_kg 
        raise "`#{body_mass_kg}` is not a number!" 
      end

      if not self.is_number? time_performing_hours
        raise "`#{time_performing_hours}` is not a number!"
      end
      
      # Calculate
      met_value = self.met_for_activity(activity)
      calories = met_value * body_mass_kg * time_performing_hours

      return calories
    rescue Exception => errorMessage
      puts "Error! -> #{errorMessage}"
    end
  end
end