class Scene
  def enter()
    puts "You must to set a scene"
  end
end


class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      puts "+++++++++++++", next_scene_name
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    current_scene.enter
  end
end

class Death < Scene

  def enter()
    death = [
      "You died with knife in your chest.",
      "You recive a bumped and fall into hole.",
      "A rock smash your brain"
    ]

    puts "#{death[rand{0..death.length}]}"
    exit(1)
  end
end

class CentralCorridor < Scene

  def enter()
    puts "You are into a central corridor"
    puts "Do you have to turn right or left"
    print "> "
    answer = $stdin.gets.chomp

    if answer == "right"
      puts "You see a woman asking for help ou go away"
      print "> "
      woman = $stdin.gets.chomp
         
      if woman == "help"
        return 'death'
      elsif woman == "go away"
        return 'thebridge'
      else
        return 'central'
      end

    elsif answer == "left"
      return 'laser'

    else
      puts "DOES NOT COMPUTE"
      return 'central'
    end 
  end
end

class LaserWeaponArmory < Scene

  def enter()
    puts "You find out a laser wepon"
    puts "Do you take or go away"
    puts "> "

    laser = $stdin.gets.chomp

    if laser == "take"
      return 'escapepod'
    elsif laser == "go away"
      return 'death'
    else
      return 'laser'
    end
      
  end
end

class TheBridge < Scene

  def enter()
    puts "You find out there are a lot of moster in both sides of the bridge"
    puts "What do you do? run to try scape or fight for your life"
    puts "> "

    bridge = $stdin.gets.chomp

    if bridge == "run"
      return 'death'
    elsif bridge == "fight"
      return 'finished'
    else
      return 'bridge'
    end
  end
end

class EscapePod < Scene

  def enter()
    puts "You're near of the escape pod when you see a huge moster coming"
    puts "You fight with him or run to escape pod"
    puts "> "
    
    pod = $stdin.gets.chomp

    if pod == "fight"
      return 'death'
    elsif pod == "run"
      return 'finished'
    else
      return 'escapepod'
    end
  end
end

class Finished < Scene
  def enter()
    puts "You won! Good job."
  end
end

class Map

  @@scenes = {
    'central' => CentralCorridor.new(),
    'laser' => LaserWeaponArmory.new(),
    'escapepod' => EscapePod.new(),
    'bridge' => TheBridge.new(),
    'death' => Death.new(),
    'finished' => Finished.new()
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    puts "-------------------", val
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('central')
a_game = Engine.new(a_map)
a_game.play()
