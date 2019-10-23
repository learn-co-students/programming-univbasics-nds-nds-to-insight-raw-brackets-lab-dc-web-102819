$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # pp nds
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  #puts directors_database[0][:movies]
  #pp directors_database[0][:name]
  #pp directors_database[0][:movies][1][:worldwide_gross]
  #pp directors_database[1]
  #val = directors_database[0][:movies][0][:worldwide_gross]
  #val1 = directors_database[1][:movies][1][:worldwide_gross]
  #sum = val + val1
  #print sum
  grand_total = 0
  result = {}
  d_i = 0 #directors index
  d_n = [] #directors name
  while d_i < nds.count do
    d_n = nds[d_i][:name]
    #puts name[d_i]
    result[d_n] = 0
    m_i = 0 #movie index
    while m_i < nds[d_i][:movies].length do
      result[d_n] += nds[d_i][:movies][m_i][:worldwide_gross]
      m_i += 1
    end
    d_i += 1
  end
  result
  #
  #
  # Be sure to return the result at the end!
end
