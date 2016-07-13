class VirusPredictor
  # accepting 3 initial arguments and initializing the 3 attributes, runs when with instances
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
  # calls the calculation methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  #  takes population density and based off of that predicts how many people will die in virus outbreak, and prints the number of deaths and which state in a string
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    multiplication_factor = 0.0
    if @population_density >= 200
      multiplication_factor -= 0.4
    elsif @population_density >= 150
      multiplication_factor = 0.3
    elsif @population_density >= 100
      multiplication_factor = 0.2
    elsif @population_density >= 50
      multiplication_factor = 0.1
    else
      multiplication_factor = 0.05
    end
    
    
    
    number_of_deaths = (@population * multiplication_factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
  #  determining the amount of time in months the disease will spread based on population density then prints results in a string.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

STATE_DATA.each do |state, data|
  current_state = VirusPredictor.new(state, data[:population_density], data[:population])
  current_state.virus_effects
end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
# require_relative- use a relative path to access data
# require- use an absolute path to rquire data