require "pry"

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry
 
      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end





def game_hash 
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
      :players =>[{
        :player => "Alan Anderson",
        :number =>0,
        :shoe =>16,
        :points =>22,
        :rebounds =>12,
        :assists =>12,
        :steals =>3,
        :blocks =>1, 
        :slam_dunks =>1},{
        :player => "Reggie Evans",
        :number =>30,
        :shoe =>14,
        :points =>12,
        :rebounds =>12,
        :assists =>12,
        :steals =>12,
        :blocks =>12, 
        :slam_dunks =>7},{
        :player => "Brook Lopez",
        :number =>11,
        :shoe =>17,
        :points =>17,
        :rebounds =>19,
        :assists =>10,
        :steals =>3,
        :blocks =>1, 
        :slam_dunks =>15},{
        :player =>"Mason Plumlee",
        :number =>1,
        :shoe =>19,
        :points =>26,
        :rebounds =>11,
        :assists =>6,
        :steals =>3,
        :blocks =>8,
        :slam_dunks =>5},{
        :player => "Jason Terry",
        :number =>31,
        :shoe =>15,
        :points =>19,
        :rebounds =>2,
        :assists =>2,
        :steals =>4,
        :blocks =>11, 
        :slam_dunks =>1}
        ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise","Purple"],
      :players =>[{
        :player => "Jeff Adrien",
        :number =>4,
        :shoe =>18,
        :points =>10,
        :rebounds =>1,
        :assists =>1,
        :steals =>2,
        :blocks =>7, 
        :slam_dunks =>2},{
        :player => "Bismack Biyombo",
        :number =>0,
        :shoe =>16,
        :points =>12,
        :rebounds =>4,
        :assists =>7,
        :steals =>22,
        :blocks =>15, 
        :slam_dunks =>10},{
        :player => "DeSagna Diop",
        :number =>2,
        :shoe =>14,
        :points =>24,
        :rebounds =>12,
        :assists =>12,
        :steals =>4,
        :blocks =>5, 
        :slam_dunks =>5},{
        :player => "Ben Gordon",
        :number =>8,
        :shoe =>15,
        :points =>33,
        :rebounds =>3,
        :assists =>2,
        :steals =>1,
        :blocks =>1,
        :slam_dunks =>0},{
        :player => "Kemba Walker",
        :number =>33,
        :shoe =>15,
        :points =>6,
        :rebounds =>12,
        :assists =>12,
        :steals =>7,
        :blocks =>5, 
        :slam_dunks =>12}
        ]
    }
  }
end 

#good_practices

def num_points_scored (player)
  game_hash.each {|key, value|
    counter = 0
    while value[:players][counter] do
      if value[:players][counter][:player] == player
        return value[:players][counter][:points]
      end 
      counter += 1 
    end
}
end
  
p num_points_scored ("Brook Lopez")

def shoe_size (player)
  game_hash.each {|key, value|
    counter = 0
    while value[:players][counter] do
      if value[:players][counter][:player] == player
        return value[:players][counter][:shoe]
      end 
      counter += 1 
    end
}
end

def team_colors (team)
  game_hash.each {|key, value|
    if value[:team_name] == team
      return value[:colors]
    end
  }
end

def team_names 
  new_array = []
  game_hash.each {|key, value|
    new_array.push(value[:team_name])
  }
  return new_array
end

def player_numbers (name)
  new_array = []
  game_hash.each {|key, value|
    if value[:team_name] == name
      counter = 0 
      while value[:players][counter] do
        new_array.push(value[:players][counter][:number])
        counter += 1
      end
    end
  }
  return new_array
end

def player_stats (name)
  right_player = {}
  game_hash.each {|key, value|
    counter = 0 
    while value[:players][counter] do
      if value[:players][counter][:player] == name
        right_player = value[:players][counter]
      end 
      counter += 1
    end
  }
  final_hash = {}
  right_player.each {|key,value|
    if key == :player
    else 
      final_hash[key]=value
    end
  }
  return final_hash
end
    
    
def big_shoe_rebounds
  rebounds = 0
  biggest_shoe = 0 
  game_hash.each {|key, value|
    counter = 0 
    while value[:players][counter] do 
      if value[:players][counter][:shoe] > biggest_shoe
        biggest_shoe = value[:players][counter][:shoe]
        rebounds = value[:players][counter][:rebounds]
      end
      counter += 1
    end
  }
  return rebounds
end
  








