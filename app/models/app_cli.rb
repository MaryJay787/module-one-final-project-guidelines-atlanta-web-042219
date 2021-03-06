# require 'audite'
# @@player = Audite.new

class AppCLI
  @@prompt = TTY::Prompt.new
  @@font = TTY::Font.new(:starwars)
  @@pastel = Pastel.new

  def run
    # @@player.load('game-of-thrones-theme-song-ringtone-30782.mp3')
    puts @@pastel.red.on_black.bold@@font.write("Game of Thrones 2.0!")

    main_menu
  end

  def main_menu
    puts @@pastel.white.on_black  "\n How are you called?.\n"
      @user_name = gets.chomp
      sleep(1)

      case @user_name
        when @user_name
          create_new_member
        else
          puts "Invalid Entry. Try Again"
      end

    puts @@pastel.red.on_black.bold"\n Where does your allegiance lye...\n\n"
    sleep(2)
    @user_house = @@prompt.select("Choose your house\n", ["House Stark", "House Targaryen", "House Baratheon"])

    case @user_house
      when @user_house
        picked_house
      else
        puts "Not an option. Try Again\n"
    end
    $checkpoint = 1
    level_one
  end

  def level_one
    puts @@pastel.white.on_blue"Realm One: Welcome to the North #{@user_name.capitalize}, land of the Starks.\n\n"
    sleep(1)
    puts @@pastel.underline"Your Mission: Kill the White Walker Night King!\n"
    sleep(2)
    weapon = @@prompt.select("Pick your weapon\n", ["Valyrian Steel", "Dragon Fire", "Steak Through the Heart", "Dragon Glass"])
      if weapon == "Valyrian Steel" || weapon == "Dragon Glass"
        sleep(1)
        puts @@pastel.green.bold"You defeated the White Walker Night King!\n\n"
        @new_user.power += 50
        puts @@pastel.yellow.bold"You're getting stronger! Your power level is now #{@new_user.power}.\n\n"
      else @new_user.life_status = "Dead"
        sleep(1)
        puts @@pastel.red.bold"The White Walker Night King killed you, and you're now part of his undead army.\n\n"
        die($checkpoint)
      end
    sleep(2)
    level_two
  end

  def level_two
    puts @@pastel.white.on_blue"Realm Two: Welcome to the Vale #{@user_name.capitalize}, land of the Arryns.\n\n"
    sleep(1)
    puts @@pastel.underline"\nYour Mission: Execute Lysa Arryn by throwing her through the Moon Door!...or save her.\n\n"
    response = @@prompt.select("LittleFinger has declared Lysa a traitor!!!. Do you obey his command?\n", ["Kessa", "Doar"])
      if response == "Doar"
        puts @@pastel.green.bold"You saved Lysa and the real traitor, LittleFinger, has thrown through the Moon Door!\n\n"
        @new_user.power += 50
        puts @@pastel.yellow.bold"You're getting stronger! Your power level is now #{@new_user.power}.\n\n"
      else @new_user.life_status = "Dead"
        puts @@pastel.red.bold"Look you can FLY!! HAHHAHAHA!!!\n\n"
        die($checkpoint)
      end
      puts "checkpoint reached!\n\n"
      $checkpoint = 3
      sleep(2)
      level_three
  end

  def level_three
    puts @@pastel.white.on_blue"Realm Three: Welcome to Riverrun #{@user_name.capitalize}, land of the Freys.\n\n"
    sleep(1)
    puts @@pastel.underline"Your Mission: Stop the Red Wedding\n\n"
    response = @@prompt.select("Who can stop the Red Wedding and Save the Starks?\n", ["Ned Stark", "Bran Stark", "Arya Stark", "Sansa Stark"])
      if response == "Arya Stark"
        puts @@pastel.green.bold"You saved the starks, we are forever in your debt!\n\n"
        @new_user.power += 50
        puts @@pastel.yellow.bold"You're getting stronger! Your power level is now #{@new_user.power}.\n\n"
      else @new_user.life_status = "Dead"
        puts @@pastel.red.bold"YOU KILLED THE STARKS!!! SHAME, SHAME, SHAME\n\n"
        die($checkpoint)
      end
      sleep(2)
      level_four
  end

  def level_four
    puts @@pastel.white.on_blue"Realm Four: Welcome to Highgarden #{@user_name.capitalize}, land of the Tyrells.\n"
    sleep(1)
    puts @@pastel.underline"Your Mission: Assassinate Joffery!!!\n"
    response = @@prompt.select("Margaery Tyrell gives you a posion to kill Joffery, will it do the job?\n", ["Kessa", "Doar"])
      if response == "Doar"
        puts @@pastel.green.bold"The Purple Wedding was a beautiful affair, thanks to #{@user_name.capitalize}.\n"
        @new_user.power += 50
        puts @@pastel.yellow.bold"You're getting stronger! Your power level is now #{@new_user.power}.\n"
      else @new_name.life_status = "Dead"
        puts @@pastel.red.bold "Joffery lives and he wants to play with you.\n"
        # die($checkpoint)
      end
    sleep(2)
    level_five
  end

  def level_five
    puts @@pastel.white.on_blue"Realm five: Welcome to Iron Islands #{@user_name.capitalize}, land of the Greyjoys.\n"
    sleep(1)
    puts @@pastel.underline "Your Mission: Don't Die in the Iron Islands.\n"
    puts "Respond to the phrase correctly: What is Dead May Never Die\n"
    response = gets.chomp
      if response.downcase == "but rises again harder and stronger"
        puts @@pastel.green.bold "Head to the Stormlands, Cersi's head is almost yours.\n"
        @new_user.power += 50
        puts @@pastel.yellow.bold"You're getting stronger! Your power level is now #{@new_user.power}.\n"
      else @new_user.life_status = "Dead"
        puts @@pastel.red.bold "What is dead, will stay dead when it comes to you! Thanks for playing.\n"
        # die($checkpoint)
      end
    sleep(2)
    level_six
  end

  def level_six
    puts @@pastel.white.on_blue"Realm Six: Welcome to the Stormlands #{@user_name.capitalize}, land of the Baratheons.\n"
    sleep(1)
    puts @@pastel.underline "Your Mission: Help Brienna of Tarth Fullfill Her Oath!\n"
    response = @@prompt.select("Which character does Brienne of Tarth rescue?", ["Arya", "Bran", "Sansa", "Rickon"])
      if response ==  "Sansa"
        puts @@pastel.green.bold "At Dawn leave for King's Landing and Claim Your Throne...if you can Beat Cersi\n"
        @new_user.power += 50
        puts @@pastel.yellow.bold"You're getting stronger! Your power level is now #{@new_user.power}.\n"
      else
        puts @@pastel.red.bold"Brienne deemed you responsible for Sansa's death and relieved you of your head!\n"
        # die($checkpoint)
      end
    sleep(2)
    level_seven_battle_scene
  end

  def level_seven_battle_scene
    puts @@pastel.white.on_blue"Final Realm: Welcome to Kingslanding #{@user_name.capitalize}, land of the Lannisters\n"
    sleep(1)
    puts @@pastel.underline "Your Mission: Conquer House Lannister and defeat Queen Cersi!\n"
    sleep(1)
    puts "Get ready... defend #{@user_house} and FINISH Lannister Army!\n"


    lannister_house = rand(1..5)

    army = @@prompt.select("Choose your ARMY!!!", ["The Dothraki Army", "The Wildlings Army", "The Unsullied Army", "The Golden Company Army"])

    battle_house = House.where(name: @user_house)

      battle_house.map do |house|
      if @user_house == house.name && army == "The Dothraki Army"
        house.power += rand(1..50)
        house.power > lannister_house
          puts @@pastel.green.bold"your house power increased to #{house.power} and you defeated the Lannister army. You'll now battle Cersi.\n"

      elsif @user_house == house.name && army == "The Wildlings Army"
        house.power += rand(1..1000)
        house.power > lannister_house
          puts @@pastel.green.bold "Your army of Wildlings crushed the Lannisters. You'll now battle Cersi.\n"
          puts "your house power increased to #{house.power}\n"

      elsif @user_house == house.name && army == "The Unsullied Army"
        house.power += rand(1..500)
        puts @@pastel.green.bold"Your house power increased to #{house.power}. Your army of Unsullied speared every Lannister in sight! You'll now battle Cersi.\n"
      elsif @user_house == house.name && army == "The Golden Company Army"
        house.power -= rand(1..10)
        puts @@pastel.red.bold"The Golden Company has betrayed you, and you will now die.\n"
        puts "The Lannisters crushed your army. You will suffer under Cersi!\n"
        exit
      end
    end
    sleep(2)
    level_eight
  end

  def level_eight
    puts @@pastel.green.bold.underline"You made it to the Red Keep.\n"
    puts @@pastel.green.bold"Will you have enough power to take the Iron Throne?\n"
    fight = @@prompt.select("What will you use to kill Queen Cersi?", ["White Walker's Ice Blade", "The Nightfall", "Crossbow"])
    @new_user.power += 50
    battle_cersi
  end

  def create_new_member
    @new_user = Member.create(
      name: "#{@user_name.capitalize}",
      life_status: "Alive",
      power: 100)
      puts "#{@new_user.name}! Welecome to realm one you're currently #{@new_user.life_status.downcase}.\n"
      puts "You have a power level of #{@new_user.power}.\n"
  end

  def battle_cersi
    cersi_power = rand(1..550)
    if @new_user.power > cersi_power
      puts "Your power level reached #{@new_user.power}!\n"
      puts @@pastel.green.on_black.italic"YOU DEFEAT CERSI! THE IRON THRONE IS YOURS!\n"
      @@pastel.green.on_black.bold@@font.write("Game Over")
      exit
    else
      puts @@pastel.red.bold"YOU FAILED YOUR MISSION and now..."
      puts @@pastel.black.on_red.bold.italic"QUEEN CERSI WILL RULE F O R E V E R \n"
      puts @@pastel.red.on_black.bold@@font.write("Game Over")
      exit
    end
  end

  def picked_house
    House.all.find do |house|
      if @user_house == house.name
          # house.power = 100
        sleep(2)
        puts "\n#{@user_name.capitalize} you picked #{house.name}! Your oath is #{house.oath}!\n"
        puts "\nYour house power level is #{house.power}\n\n"
      end
    end
  end

  def die(checkpoint)
    # system("clear")
    puts "restoring checkpoint...\n Press ENTER to continue...\n"
    gets
    case checkpoint
    when 1
      self.level_one
    when 3
      self.level_three
    when 5
      self.level_five
    end
  end
end
