require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].select do |person|
    person["status"] == "Winner"
  end[0]["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  contestant = ""
  data.each do |the_season, the_data|
      the_data.each do |person|
        if person["occupation"] == occupation
          contestant = person["name"]
        end
      end
    end
  contestant
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |the_season, the_data|
    the_data.each do |person|
      if person["hometown"] == hometown
        counter +=1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |the_season, the_data|
    the_data.each do |person|
      if person["hometown"] == hometown
        occupation = person["occupation"]
        break
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  total = 0
  counter = 0.0
  data[season].each do |person|
    total += person["age"].to_i
    counter += 1.0
  end
  (total/counter).round
end
