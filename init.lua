minetest.register_tool("cool_nodes:diamond_fused_tool", {
    description = "Diamond Fused Tool",
    inventory_image = "diamond_fused_tool.png",
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level = 1,
        groupcaps = {
            crumbly = {
                maxlevel = 08,
                uses = 20,
                times = { [1]=0.60, [2]=0.70, [3]=0.80 }
            },
            choppy = {
                maxlevel = 08,
                uses = 20,
                times = { [1]=0.60, [2]=0.70, [3]=0.80 }
            },
            cracky = {
                maxlevel = 08,
                uses = 20,
                times = { [1]=0.60, [2]=0.70, [3]=0.80 }
            },
        },
        damage_groups = {fleshy=8},
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "cool_nodes:diamond_fused_tool",
    recipe = {
        "default:pick_diamond",
        "default:axe_diamond",
        "default:shovel_diamond",
    },
})

minetest.register_node("cool_nodes:plate_glass", {
 	description = "Plate Glass",
 	drawtype = "glasslike",
 	paramtype = "light",
 	sunlight_propagates = true,
 	tiles = {"plate_glass.png"},
 	light_source = 1,
 	use_texture_alpha = true,
 	is_ground_content = false,
 	groups = {cracky = 3, level=1},
 	--sounds = minetest.node_sound_stone_defaults(),
})

minetest.register_craft({
    type = "shapeless",
    output = "cool_nodes:plate_glass 6",
    recipe = {
        "default:glass",
        "default:glass",
        "default:glass",
        "default:glass",
    },
})