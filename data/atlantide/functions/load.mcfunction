## function #minecraft:load

#new scoreboard
scoreboard objectives add atlantide.oxygene dummy
#set scoreboard
scoreboard players set #max atlantide.oxygene 120
scoreboard players set #temp atlantide.oxygene 3
scoreboard players operation #1_3 atlantide.oxygene = #max atlantide.oxygene
scoreboard players operation #1_3 atlantide.oxygene /= #temp atlantide.oxygene
scoreboard players operation #2_3 atlantide.oxygene = #1_3 atlantide.oxygene
scoreboard players operation #2_3 atlantide.oxygene += #2_3 atlantide.oxygene

#launch schedules
function atlantide:schedule

#items
data modify storage atlantide:items all.scuba set value {id:"minecraft:iron_helmet",Count:1b,tag:{ctc:{"id":"scuba",		"from":"rdm:atlantide","trait":{"armor/helmet":1b}},atlantide:{armor:{helmet:1b}},display:{'Name':'{"text":"scuba","color":"aqua","italic":false}','Lore':['{"text":"ideal for scuba diving","color":"gray"}','{"text": "Atlantide","color": "blue"}']},AttributeModifiers:[{Amount:1b,AttributeName:"minecraft:generic.armor",Name:"minecraft:generic.armor",UUID:[I;407084967,749161718,-1274702522,-1280021732],Slot:"head"}]}}
data modify storage atlantide:items all.scuba_head set value {id:"minecraft:glass",	Count:1b,tag:{ctc:{"id":"scuba_head",	"from":"rdm:atlantide","trait":{"armor/helmet":1b}},atlantide:{armor:{helmet:1b}},display:{'Name':'{"text":"scuba","color":"aqua","italic":false}','Lore':['{"text":"ideal for scuba diving","color":"gray"}','{"text": "Atlantide","color": "blue"}']},AttributeModifiers:[{Amount:1b,AttributeName:"minecraft:generic.armor",Name:"minecraft:generic.armor",UUID:[I;407084967,749161718,-1274702522,-1280021732],Slot:"head"}]}}

## define
#define storage atlantide:items every items in the pack
#define score_holder #temp a temporary fake player you can use everywhere
#define score_holder #max the maximum of oxygen abvalid
