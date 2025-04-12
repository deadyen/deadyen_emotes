Config = {}

Config.Title = 'deadyen'               -- Title that is going to be displayed on the top of the menu
Config.Text = 'deadyen.com'            -- small text that is going to be displayed under Config.Title
Config.Side = 'right'                  -- left, right or custom
Config.SideCustom = { x = 0, y = 100 } -- only edit if you put 'custom' in Config.Side
Config.CustomMenuBackground = {
	textureDict = "generic_textures",
	texture = "selection_box_bg_1c",
} -- RedM currently seems to not support DUI. If you stream a custom texture or you find one you want to use in the game you can do so here.
-- here's a link to textures you could use. https://github.com/femga/rdr3_discoveries/tree/31d2059894bc16dea87ca30034bffc15e475ee1c/useful_info_from_rpfs/textures/menu_textures

Config.WalkAnims = true              -- Do you want Walk animations as an option?
Config.LimitSpeed = true             -- Do you want Limiting walk speed as an option?
Config.Expressions = true            -- Do you want Expressions (facial animations) as an option?

Config.OpenControl = 0x1F6D95E5      -- F4
Config.OpenCommand = 'emotemenu'     -- opens the emotemenu
Config.ShortCommand = 'e'            -- plays the emote entered after this command for example: /e sit

Config.SmoothHandsUp = true          -- do you want to have a smooth handsup animation? -- might interfere with vorp and its own handsup animation
Config.HandsUpControl = 0x7DA48D2A   -- X

Config.SmoothCrossArms = true        -- do you want to have a smooth cross arms animation?
Config.CrossArmsControl = 0x5415BE48 -- G
Config.ShouldCancelEmotes = true     -- should cancel emotes after you press G twice?
Config.CrossArmsAnim = {
	animDict = "script_rc@gun1@ig@stage_01@ig1_watching",
	anim = "idle_to_armscrossed_gunslinger"
}

Config.Ragdoll = true              -- do you want to use our ragdoll system?
Config.RagdollKeybind = false      -- do you want to use a ragdoll keybind?
Config.RagdollControl = 0xD8F73058 -- U
Config.RagdollCommand = 'rag'      -- do you want to use a ragdoll command? leave empty if not.

Config.FingerPoint = true          -- do you want to use our pointing system?
Config.PointControl = 0x5966D52A   -- B

Config.CustomAnimations = {        -- this allows you to add custom animations and also replace any animation by using the same name. You have to include AnimationOptions on every animation.
	--[[ ["example"] = {"animDict", "animation", "Example Name", AnimationOptions =
    { --here are all options you can use explained
        EmoteMoving = true, -- if this is true it allows you to move with the animation (it only plays on the upper body.)
        EmoteDuration = 2500, -- only use this if you don't use EmoteLoop/EmoteStopAtLastFrame and you want to cut the animation you're using short. the time is in ms.
        EmoteStopAtLastFrame = false, -- if this is true the emote will be stuck on the last frame of the animation. Usefull for animations that don't loop correctly. Only use without EmoteLoop.
        EmoteLoop = false, -- loops the animation. only use without EmoteDuration and EmoteStopAtLastFrame.
    }}, ]]
	["reaching"] = {"mech_busted@unapproved", "reach_weapon", "Reaching", AnimationOptions = {
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["me"] = {"script_common@gestures@unapproved", "gesture_me_hard", "Me", AnimationOptions = {
		EmoteMoving = true,
		EmoteDuration = 1000
	}},
	["pray"] = {"amb_misc@world_human_pray_rosary@base", "base", "Pray", AnimationOptions = {
		EmoteMoving = true,
		EmoteStopAtLastFrame = true,
	}}, -- some example emotes for you to get started

}

Config.CustomPropAnimations = { -- same rules as above apply here. This is used for animations to appear in the prop animations category.
	["tray"] = {"mech_loco_m@character@arthur@carry@crate_tnt@idle", "idle", "Tray", AnimationOptions = {
		Props = {
			[1] = {
				prop = 'p_tray03x',
				bone = "PH_R_Hand",
				offset = vec3(0.0, 0.0, 0.0),
				rotation = vec3(0.0, 0.0, 0.0),
			},
		},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["newspaper"] = {"amb_camp@world_camp_sean_lean_barrel@read_paper@male_a@wip_base",	"wip_base",	"Newspaper", AnimationOptions = {
		Props = {
			[1] = {
				prop = 'p_cs_newspaper_02x_noanim',
				bone = "PH_R_Hand",
				offset = vec3(0.0, 0.0, 0.0),
				rotation = vec3(0.0, 0.0, 0.0),
			},
		},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["fiddle"] = {"ai_gestures@instruments@fiddle@standing@female@drunk", "fiddle_low_long_shorts_-1_02", "Fiddle",	AnimationOptions = {
		Props = {
			[1] = {
				prop = 'p_fiddle01x',
				bone = "PH_L_Hand",
				offset = vec3(0.0, 0.0, 0.0),
				rotation = vec3(0.0, 0.0, 0.0),
			},
			[2] = {
				prop = 'p_bow01x',
				bone = "PH_R_Hand",
				offset = vec3(0.0, 0.0, 0.0),
				rotation = vec3(0.0, 0.0, 0.0),
			},
		},
		EmoteLoop = true,
		EmoteMoving = true,
	}}, -- example of a prop emote with 2 props
	["toolbox"] = {"mech_loco_m@character@john_marston@carry@toolbox@idle",	"idle",	"Toolbox", AnimationOptions = {
		Props = {
			[1] = {
				prop = 'p_toolbox01x',
				bone = "PH_L_Hand",
				offset = vec3(0.0, 0.0, 0.0),
				rotation = vec3(0.0, 0.0, 0.0),
			},
		},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["baby"] = {"script_common@trailer@impoverished_beggar", "beggar_female", "Baby", AnimationOptions = {
		Props = {
			[1] = {
				prop = 'prop_stuntdoll_01',
				bone = "PH_L_Hand",
				offset = vec3(0.0, 0.06, 0.12),
				rotation = vec3(-55.0, -150.0, -22.0),
			},
		},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["basket"] = {"amb_wander@code_human_basket_wander@female_a@base", "base", "Basket", AnimationOptions = {
		Props = {
			[1] = {
				prop = 'p_basket13x',
				bone = "PH_R_Hand",
				offset = vec3(0.05, 0.0, 0.03),
				rotation = vec3(0.0, 0.0, 0.0),
			},
		},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["basket2"] = {"amb_wander@code_human_basket_wander@female_a@base", "base", "Basket", AnimationOptions = {
		Props = {
			[1] = {
				prop = 'p_basket06bx',
				bone = "PH_R_Hand",
				offset = vec3(0.05, 0.0, 0.03),
				rotation = vec3(0.0, 0.0, 0.0),
			},
		},
		EmoteLoop = true,
		EmoteMoving = true,
	}}, -- some example prop emotes for you to get started (these prop emotes were researched by @cocomonksky a big thank you to them! <3)

}

Config.DisabledAnimations = {
	"test",
	--"crawl",
	--"prone",
} -- allows you to disable any animations.


Config.Locales = {
	["anims"] = "Animations",
	["cancelanim"] = "Cancel Animation",
	["walk"] = "Walk Animations",
	["expressions"] = "Expressions",
	["dances"] = "→Dances",
	["emotes"] = "→Emotes",
	["props"] = "→Prop Emotes",
	["static"] = "→Static",
	["search"] = "→Search for an emote",
	["searchinput"] = "Enter the name of the emote",
	["staticdesc"] = "Do you want to move during the emote?",
	["limitspeed"] = "→Limit walk speed",
	["limitdesc"] = "Limits your walking speed",
	["speed"] = "→Walk speed",
	["notvalid"] = "is not a valid animation.",
	["chatsuggestion"] = "Opens the emote menu. You can also use F4.", -- should probably change F4 to your control if you change it
	["chatsuggestion2"] = "Plays a emote you enter.",
}

Config.Notification = 'chat'                            -- redemrp, vorp, gum_notify or chat. If you want to you can use your own notification system in the function below.

SendNotification = function(text) -- not really sure about any of these framework notifications so please correct these if they dont work :)
	if Config.Notification == 'redemrp' then
		TriggerEvent('redem_roleplay:Tip', text, 7500)
	elseif Config.Notification == 'vorp' then
		TriggerEvent("vorp:TipRight", text, 7500)
	elseif Config.Notification == 'gum_notify' then
		exports['gum_notify']:DisplayLeftNotification(Config.Title, text, '', 7500)
	elseif Config.Notification == 'chat' then
		TriggerEvent('chat:addMessage', {
			template =
			'<div style="padding: 0.45vw; margin: 0.05vw; background-color: rgba(21,76,121,200); border-radius: 10px; display:inline-block; text-shadow: 2px 2px #000000;"> {0}</div>',
			args = { "^5" .. Config.Title .. '^0: ^7' .. text }
		})
	end
end

CanDoAnimation = function(emotename) -- function that returns true if the player can currently play an animation (feel free to put any checks you require here)
	local ped = PlayerPedId()
	if IsEntityDead(ped) or IsEntityInWater(ped) or IsPedCuffed(ped) or IsPlayerFreeAiming(PlayerId()) then
		return false
	end

	--[[ -- example of blocking certain emotes while player is busy

    --print("checking if player can currently do animation with the name: " .. emotename) -- ex

    local emotes = {
        "point",
        "wave",
        "salute",
        "crossarms",
        "handsup",
        "sit",
    }

    for i=1, #emotes do
        if emotename == emotes[i] then
            if LocalPlayer.state.isBusy then
                return false
            end
        end
    end

    -- in any other script you can set LocalPlayer.state.isBusy to true when the player is busy and false when they are not.
    ]]

	return true
end


-- Available exports:
--[[

exports.deadyen_emotes:StartAnimation("emotename") -- plays animation the same way it would play if a player would do /e emote
exports.deadyen_emotes:ShowMenu(true) -- true/false either shows or hides the emotemenu
exports.deadyen_emotes:CancelAnim()

]]
