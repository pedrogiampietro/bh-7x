local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end
function onPlayerEndTrade(cid)				npcHandler:onPlayerEndTrade(cid)			end
function onPlayerCloseChannel(cid)			npcHandler:onPlayerCloseChannel(cid)		end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

-- -- Seller Objets
-- -- Helmets
-- shopModule:addSellableItem({'steel helmet'}, 2457, 200, 'steel helmet')
-- shopModule:addSellableItem({'devil helmet'}, 2462, 5000, 'devil helmet')
-- shopModule:addSellableItem({'warrior helmet'}, 2475, 7000, 'warrior helmet')
-- shopModule:addSellableItem({'dark helmet'}, 2490, 250, 'dark helmet')
-- shopModule:addSellableItem({'crown helmet'}, 2491, 7500, 'crown helmet')
-- shopModule:addSellableItem({'crusader helmet'}, 2497, 7600, 'crusader helmet')
-- shopModule:addSellableItem({'beholder helmet'}, 3972, 7500, 'beholder helmet')
-- shopModule:addSellableItem({'helmet of the ancients'}, 2342, 12700, 'helmet of the ancients')
-- shopModule:addSellableItem({'royal helmet'}, 2498, 34500, 'royal helmet')
-- shopModule:addSellableItem({'amazon helmet'}, 2499, 112500, 'amazon helmet')
-- shopModule:addSellableItem({'dragon scale helmet'}, 2506, 115000, 'dragon scale helmet')
-- shopModule:addSellableItem({'golden helmet'}, 2471, 188000, 'golden helmet')
-- shopModule:addSellableItem({'winged helmet'}, 2474, 185000, 'winged helmet')
-- shopModule:addSellableItem({'demon helmet'}, 2493, 184000, 'demon helmet')
-- shopModule:addSellableItem({'horned helmet'}, 2496, 195000, 'horned helmet')

-- -- Armors
-- shopModule:addSellableItem({'plate armor'}, 2463, 600, 'plate armor')
-- shopModule:addSellableItem({'knight armor'}, 2476, 5500, 'knight armor')
-- shopModule:addSellableItem({'scale armor'}, 2483, 100, 'scale armor')
-- shopModule:addSellableItem({'noble armor'}, 2486, 1000, 'noble armor')
-- shopModule:addSellableItem({'leopard armor'}, 3968, 500, 'leopard armor')
-- shopModule:addSellableItem({'rangers cloak'}, 2660, 200, 'rangers cloak')
-- shopModule:addSellableItem({'dark armor'}, 2489, 500, 'dark armor')
-- shopModule:addSellableItem({'golden armor'}, 2466, 33500, 'golden armor')
-- shopModule:addSellableItem({'crown armor'}, 2487, 22500, 'crown armor')
-- shopModule:addSellableItem({'amazon armor'}, 2500, 122500, 'amazon armor')
-- shopModule:addSellableItem({'elven armor'}, 2505, 22500, 'elven armor')
-- shopModule:addSellableItem({'magic plate armor'}, 2472, 160000, 'magic plate armor')
-- shopModule:addSellableItem({'demon armor'}, 2494, 245000, 'demon armor')
-- shopModule:addSellableItem({'dragon scale mail'}, 2492, 46000, 'dragon scale mail')

-- -- Legs
-- shopModule:addSellableItem({'knight legs'}, 2477, 8000, 'knight legs')
-- shopModule:addSellableItem({'elven legs'}, 2507, 400, 'elven legs')
-- shopModule:addSellableItem({'plate legs'}, 2647, 700, 'plate legs')
-- shopModule:addSellableItem({'crown legs'}, 2488, 18000, 'crown legs')
-- shopModule:addSellableItem({'golden legs'}, 2470, 67000, 'golden legs')
-- shopModule:addSellableItem({'demon legs'}, 2495, 175000, 'demon legs')

-- -- Boots
-- shopModule:addSellableItem({'steel boots'}, 2645, 42000, 'steel boots')
-- shopModule:addSellableItem({'golden boots'}, 2646, 45000, 'golden boots')

-- shopModule:addSellableItem({'sword'}, 2376, 70, 'sword')
-- shopModule:addSellableItem({'mace'}, 2398, 70, 'mace')
-- shopModule:addSellableItem({'axe'}, 2386, 70, 'axe')
-- shopModule:addSellableItem({'giant smithhammer'}, 2321, 2400, 'giant smithhammer')
-- shopModule:addSellableItem({'two handed sword'}, 2377, 950, 'two handed sword')
-- shopModule:addSellableItem({'battle axe'}, 2378, 900, 'battle axe')
-- shopModule:addSellableItem({'halberd'}, 2381, 950, 'halberd')
-- shopModule:addSellableItem({'spike sword'}, 2383, 1100, 'spike sword')
-- shopModule:addSellableItem({'double axe'}, 2387, 920, 'double axe')
-- shopModule:addSellableItem({'fire sword'}, 2392, 6000, 'fire sword')
-- shopModule:addSellableItem({'morning star'}, 2394, 400, 'morning star')
-- shopModule:addSellableItem({'bright sword'}, 2407, 9000, 'bright sword')
-- shopModule:addSellableItem({'serpent sword'}, 2409, 1000, 'serpent sword')
-- shopModule:addSellableItem({'broad sword'}, 2413, 300, 'broad sword')
-- shopModule:addSellableItem({'battle hammer'}, 2417, 250, 'battle hammer')
-- shopModule:addSellableItem({'clerical mace'}, 2423, 300, 'clerical mace')
-- shopModule:addSellableItem({'obsidian lance'}, 2425, 2500, 'obsidian lance')
-- shopModule:addSellableItem({'naginata'}, 2426, 4500, 'naginata')
-- shopModule:addSellableItem({'barbarian axe'}, 2429, 3000, 'barbarian axe')
-- shopModule:addSellableItem({'knight axe'}, 2430, 5000, 'knight axe')
-- shopModule:addSellableItem({'fire axe'}, 2432, 7000, 'fire axe')
-- shopModule:addSellableItem({'dragon hammer'}, 2434, 2500, 'dragon hammer')
-- shopModule:addSellableItem({'dwarven axe'}, 2435, 2800, 'dwarven axe')
-- shopModule:addSellableItem({'skull staff'}, 2436, 6000, 'skull staff')
-- shopModule:addSellableItem({'epee'}, 2438, 7000, 'epee')
-- shopModule:addSellableItem({'daramanian waraxe'}, 2440, 1500, 'daramanian waraxe')
-- shopModule:addSellableItem({'crystal mace'}, 2445, 6000, 'crystal mace')
-- shopModule:addSellableItem({'pharaoh sword'}, 2446, 19000, 'pharaoh sword')
-- shopModule:addSellableItem({'djinn blade'}, 2451, 18000, 'djinn blade')
-- shopModule:addSellableItem({'lich staff'}, 3961, 18000, 'lich staff')
-- shopModule:addSellableItem({'beastslayer axe'}, 3962, 5000, 'beastslayer axe')
-- shopModule:addSellableItem({'platinum amulet'}, 2171, 2000, 'platinum amulet')

-- shopModule:addSellableItem({'war hammer'}, 2391, 21200, 'war hammer')
-- shopModule:addSellableItem({'giant sword'}, 2393, 22000, 'giant sword')
-- shopModule:addSellableItem({'dragon lance'}, 2414, 22200, 'dragon lance')
-- shopModule:addSellableItem({'silver mace'}, 2424, 21200, 'silver mace')
-- shopModule:addSellableItem({'guardian halberd'}, 2427, 3200, 'guardian halberd')
-- shopModule:addSellableItem({'light mace'}, 2437, 5500, 'light mace')
-- shopModule:addSellableItem({'ravagers axe'}, 2443, 5200, 'ravagers axe')
-- shopModule:addSellableItem({'hammer of wrath'}, 2444, 5400, 'hammer of wrath')
-- shopModule:addSellableItem({'tytan axe'}, 2447, 2800, 'tytan axe')
-- shopModule:addSellableItem({'heavy mace'}, 2452, 2200, 'heavy mace')
-- shopModule:addSellableItem({'war axe'}, 2454, 2900, 'war axe')
-- shopModule:addSellableItem({'hat of the mad'}, 2323, 23500, 'hat of the mad')
-- shopModule:addSellableItem({'ceremonial mask'}, 2501, 12500, 'ceremonial mask')
-- shopModule:addSellableItem({'blue robe'}, 2656, 33500, 'blue robe')
-- shopModule:addSellableItem({'magician hat'}, 2662, 7555, 'magician hat')

-- shopModule:addSellableItem({'magic longsword'}, 2390, 440000, 'magic longsword')
-- shopModule:addSellableItem({'ice rapier'}, 2396, 1000, 'ice rapier')
-- shopModule:addSellableItem({'magic sword'}, 2400, 119000, 'magic sword')
-- shopModule:addSellableItem({'warlord sword'}, 2408, 135000, 'warlord sword')
-- shopModule:addSellableItem({'great axe'}, 2415, 140000, 'great axe')
-- shopModule:addSellableItem({'thunder hammer'}, 2421, 119000, 'thunder hammer')
-- shopModule:addSellableItem({'stonecutter axe'}, 2431, 119000, 'stonecutter axe')
-- shopModule:addSellableItem({'arcane staff'}, 2453, 140000, 'arcane staff')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

