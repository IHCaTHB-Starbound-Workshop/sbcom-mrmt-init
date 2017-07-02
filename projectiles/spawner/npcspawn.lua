require "/scripts/util.lua"

function init()
  local configParameter = config.getParameter("scriptConfig")
  local choice = util.randomFromList(configParameter.options)
  world.spawnNpc(entity.position(), util.randomFromList(choice.species), util.randomFromList(choice.type), world.threatLevel())
end
