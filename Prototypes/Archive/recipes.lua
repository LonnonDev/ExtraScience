data:extend {
    {
        --[[
            Ballistics Science Pack Recipe
            ingredients:
                - 1 pistol
                - 1 firearm magazine
        ]]
        type = "recipe",
        name = "ballistics-science-pack-mk1",
        energy_required = 5,
        ingredients = {
            {name = "pistol", amount = 1},
            {name = "firearm-magazine", amount = 1}
        },
        subgroup = "science-pack",
        enabled = false,
        result = "ballistics-science-pack-mk1"
    },
    {
         --[[
            Ballistics Science Pack MK 1 Recipe
            ingredients:
                - 1 submachine-gun
                - 5 shotgun-shell
        ]]
        type = "recipe",
        name = "ballistics-science-pack-mk2",
        energy_required = 5,
        ingredients = {
            {name = "submachine-gun", amount = 1},
            {name = "shotgun-shell", amount = 5}
        },
        subgroup = "science-pack",
        enabled = false,
        result = "ballistics-science-pack-mk2"
    },
    {
        --[[
           Combustion Science Pack Recipe
           ingredients:
               - 100 Oil
               - 2 Grenades
       ]]
       type = "recipe",
       name = "combustion-science-pack",
       category = "crafting-with-fluid",
       energy_required = 5,
       ingredients = {
           {type = "fluid", name = "crude-oil", amount = 100},
           {name = "grenade", amount = 5}
       },
       subgroup = "science-pack",
       enabled = false,
       result = "combustion-science-pack"
   }
}