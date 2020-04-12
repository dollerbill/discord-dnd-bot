require_relative '../../config/init/configure_sequel'
require_relative '../../config/init/configure_models'

Player.create(name: 'Dungeon Master', character_class: 'Unknown', gender: 'none', hit_die: 1)
Player.create(name: 'Bilbo', character_class: 'Paladin', hit_die: 10, gender: 'male', user: 'dollerbill', stat_id: 1, weapon_id: 1)
Player.create(name: 'Junebug', character_class: 'Rogue', hit_die: 8, gender: 'male', stat_id: 2, weapon_id: 1)
