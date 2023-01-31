# require "pry"

class Player
    attr_accessor :name, :life_points 
    @@players= []
    @@players= 0
 

    def initialize(name)
        @name = name
        @life_points = 10
        # @@players= @@players_count + 1
        # @@all_players = @@players << self 
   
    end 

    def show_state

        puts "#{@name} a #{@life_points} points de vie "
    
    end


    def gets_damage (damage_received)
        @life_points = @life_points - damage_received
        # puts @life_points 
        puts "#{@name} a perdu #{damage_received} points "
         if @life_points <= 0  
         puts "le joueur #{@name} a été tué !" # l'écriture #{} permet d'insérer une variable dans un string  
         exit 
        end
    end


    def attack(rival)
        puts" #{@name} attaque #{rival.name}"
        damage_received = compute_damage
        rival.gets_damage(damage_received)
        puts"#{@name} inflige #{damage_received} damage to #{rival.name}"
        # puts"#{@nameplayer2} deals #{@life_points} damage to #{@nameplayer1}"
    end

    def compute_damage 
      
     return  rand (1..6)

    end

end

#  player1= Player.new("josiane")
# # player1.show_state
# # player1.gets_damage(5) 
# # player1.show_state
# # player1.attack(player2)
#  player2= Player.new("josé")
# # player2.show_state
# # player2.gets_damage(3) 
# # player2.show_state
# # player2.attack(player1)

# binding.pry
# puts"end of file"

# n'oublies pas de rentrer ta valeur apres ton appel de méthode et ceci dans les parenthèses
# n'oublies pas ta def compute_damage

