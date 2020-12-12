data:extend {
    {
        --[[
            Ballistics Science Pack
        ]]
        type = "tool",
        name = "ballistics-science-pack-mk1",
        icons = {
            {
                icon = "__base__/graphics/icons/automation-science-pack.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/pistol.png",
                scale = 0.4,
                icon_size = 64,
                tint = {255, 105, 117, 255},
                shift = {0, 4}
            }
        },
        icon_size = 64,
        subgroup = "science-pack",
        order = "a[ballistics-science-pack-mk1]",
        stack_size = 200,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
    },
    {
        --[[
            Ballistics Science Pack MK2
        ]]
        type = "tool",
        name = "ballistics-science-pack-mk2",
        icons = {
            {
                icon = "__base__/graphics/icons/automation-science-pack.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/submachine-gun.png",
                scale = 0.4,
                icon_size = 64,
                tint = {255, 105, 117, 255},
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