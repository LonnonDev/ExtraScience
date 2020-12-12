data:extend {
    {
        --[[
            Combustion Science Pack
        ]]
        type = "tool",
        name = "combustion-science-pack",
        icons = {
            {
                icon = "__base__/graphics/icons/utility-science-pack.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/flamethrower.png",
                scale = 0.4,
                icon_size = 64,
                tint = {246, 255, 66, 255},
                shift = {0, 4}
            }
        },
        icon_size = 64,
        subgroup = "science-pack",
        order = "b[ballistics-science-pack-mk2]",
        stack_size = 200,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
}