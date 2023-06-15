Config = {}
-- text messages
 Config.gold_no_collect     = 'You can\'t find gold here.'
 Config.gold_not_found      = 'You didn\'t found anything.'
 Config.found_normal        = "You found something."
 Config.found_valuable      = "You found something valuable."
 Config.found_rare          = "You found something rare."
 Config.found_very_rare     = "You found something very rare."

 -- search time (default 10000 - 10seconds)
 Config.waittime = 10000

 --item chances (makre it covers the range 1-100)
 Config.chance_nothing      = {1, 22}   -- 22%
 Config.chance_normal       = {23, 77}  -- 55%
 Config.chance_valuable     = {78, 92} -- 15%
 Config.chance_rare         = {93, 97}  -- 5%
 Config.chance_very_rare    = {98, 100}  -- 3%

-- items that can be found
Config.item_normal      = {"fishbait","nails","rock","shellcasing","glasseye","provision_db_finger_bone","bolts","metal_gear","provision_arrowhead_bone","provision_arrowhead_chipped","provision_arrowhead_crude","provision_arrowhead_feldspar","provision_arrowhead_granite","provision_arrowhead_rough","provision_arrowhead_splintered"}
Config.item_valuable    = {"goldnugget","quartz","provision_arrowhead_quartz","provision_arrowhead_obsidian","provision_arrowhead_agate"}
Config.item_rare        = {"provision_coin_1700_ny_tkn","provision_coin_1787_cent_tkn","provision_coin_1789_pny","provision_coin_1792_lib_qtr","provision_coin_1792_nickel","provision_coin_1792_qtr","provision_coin_1794_slv_dlr","provision_coin_1795_hlf_eag","provision_coin_1796_hlf_pny","provision_coin_1797_gld_eag","provision_coin_1798_slv_dlr","provision_coin_1800_five_dlr","provision_coin_1800_gld_dlr","provision_coin_1800_gld_qtr","provision_coin_1800_hlf_dime"}
Config.item_very_rare   = {"provision_asteroid_chunk","diamond","emerald","pearl"}
