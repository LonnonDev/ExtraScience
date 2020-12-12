data:extend {
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