--! #textdomain "Vision_of_a_Shaman"
local _ = wesnoth.textdomain "wesnoth-Vision_of_a_Shaman"

local helper = wesnoth.require "lua/helper.lua"

local _ = wesnoth.textdomain "wesnoth-Vision_of_a_Shaman"
function wesnoth.wml_actions.put_to_recall_list(cfg)
   local units = wesnoth.get_units(cfg)
   for i, unit in ipairs(units) do   
      if cfg.heal then
         unit.hitpoints = unit.max_hitpoints
         unit.moves = unit.max_moves
         unit.attacks_left = unit.max_attacks
         unit.status.poisoned = false
         unit.status.slowed = false
      end
      wesnoth.put_recall_unit(unit, unit.side)
   end
end
