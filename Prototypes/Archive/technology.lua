data:extend {
    {
        type = "technology",
        name = "ballistics-science-pack-mk1",
        icon_size = 64,
        icons = {
            {
                icon = "__base__/graphics/icons/automation-science-pack.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/pistol.png",
                scale = 0.8,
                icon_size = 64,
                tint = {255, 105, 117, 255},
                shift = {0, 4}
            }
        },
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "ballistics-science-pack-mk1"
            }
        },
        unit = 
        {
            count = 10,
            ingredients =
            {
                {"automation-science-pack", 1},
            },
            time = 15
        }
    },
    {
        type = "technology",
        name = "ballistics-science-pack-mk2",
        icon_size = 64,
        icons = {
            {
                icon = "__base__/graphics/icons/automation-science-pack.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/submachine-gun.png",
                scale = 0.8,
                icon_size = 64,
                tint = {255, 105, 117, 255},
                shift = {0, 4}
            }
        },
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "ballistics-science-pack-mk2"
            }
        },
        unit = 
        {
            count = 10,
            ingredients =
            {
                {"automation-science-pack", 1},
            },
            time = 15
        }
    },
    {
        type = "technology",
        name = "combustion-science-pack",
        icon_size = 64,
        icons = {
            {
                icon = "__base__/graphics/icons/utility-science-pack.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/flamethrower.png",
                scale = 0.8,
                icon_size = 64,
                tint = {246, 255, 66, 255},
                shift = {0, 4}
            }
        },
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "combustion-science-pack"
            }
        },
        prerequisites = {"ballistics-science-pack-mk1"}, {"fluid-handeling"},
        unit = 
        {
            count = 20,
            ingredients =
            {
                {"automation-science-pack", 2},
                {"logistic-science-pack", 1},
                {"ballistics-science-pack-mk1", 2},
                {"ballistics-science-pack-mk2", 1},
            },
            time = 15
        }
    },
}