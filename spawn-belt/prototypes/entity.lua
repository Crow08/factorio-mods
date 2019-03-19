require ("transport-belt-pictures")

spawn_belt_animation_set = {
  animation_set =
  {
    filename = "__spawn-belt__/graphics/entity/spawn-belt/spawn-belt.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    frame_count = 32,
    direction_count = 20,
    hr_version =
    {
      filename = "__spawn-belt__/graphics/entity/spawn-belt/hr-spawn-belt.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 32,
      direction_count = 20
    }
  },

  east_index = 1,
  west_index = 2,
  north_index = 3,
  south_index = 4,

  east_to_north_index = 5,
  north_to_east_index = 6,

  west_to_north_index = 7,
  north_to_west_index = 8,

  south_to_east_index = 9,
  east_to_south_index = 10,

  south_to_west_index = 11,
  west_to_south_index = 12,

  starting_south_index = 13,
  ending_south_index = 14,

  starting_west_index = 15,
  ending_west_index = 16,

  starting_north_index = 17,
  ending_north_index = 18,

  starting_east_index = 19,
  ending_east_index = 20
}

void_belt_animation_set = {
  animation_set =
  {
    filename = "__spawn-belt__/graphics/entity/spawn-belt/spawn-belt.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    frame_count = 32,
    direction_count = 20,
    hr_version =
    {
      filename = "__spawn-belt__/graphics/entity/spawn-belt/hr-spawn-belt.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 32,
      direction_count = 20
    }
  },

  east_index = 1,
  west_index = 2,
  north_index = 3,
  south_index = 4,

  east_to_north_index = 5,
  north_to_east_index = 6,

  west_to_north_index = 7,
  north_to_west_index = 8,

  south_to_east_index = 9,
  east_to_south_index = 10,

  south_to_west_index = 11,
  west_to_south_index = 12,

  starting_south_index = 13,
  ending_south_index = 14,

  starting_west_index = 15,
  ending_west_index = 16,

  starting_north_index = 17,
  ending_north_index = 18,

  starting_east_index = 19,
  ending_east_index = 20
}



data:extend({
  {
    type = "transport-belt",
    name = "spawn-belt",
    icon = "__spawn-belt__/graphics/icons/spawn-belt.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "spawn-belt"},
    max_health = 50,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/express-transport-belt.ogg",
        volume = 0.4
      },
      persistent = true
    },
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__spawn-belt__/graphics/entity/spawn-belt/spawn-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12,
      hr_version =
      {
        filename = "__spawn-belt__/graphics/entity/spawn-belt/hr-spawn-belt.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 32,
        direction_count = 12,
        scale = 0.5
      }
    },
    belt_animation_set = spawn_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.15375,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
  {
    type = "transport-belt",
    name = "void-belt",
    icon = "__spawn-belt__/graphics/icons/void-belt.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "void-belt"},
    max_health = 50,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/express-transport-belt.ogg",
        volume = 0.4
      },
      persistent = true
    },
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__spawn-belt__/graphics/entity/void-belt/void-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12,
	  hr_version =
      {
        filename = "__spawn-belt__/graphics/entity/void-belt/hr-void-belt.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 32,
        direction_count = 12,
        scale = 0.5
      }
    },
    belt_animation_set = void_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.15375,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
})