player_manager.AddValidModel( "Scorpio SWTOR", "models/turbo/scorpio/scorpio.mdl" );
list.Set( "PlayerOptionsModel", "Scorpio SWTOR", "models/turbo/scorpio/scorpio.mdl" );
player_manager.AddValidHands( "Scorpio SWTOR", "models/turbo/scorpio/scorpio_c_arms.mdl" );

local Category = "SWTOR"

local NPC = {
    Name = "Scorpio (Friendly)",
    Class = "npc_citizen",
    Model = "models/turbo/scorpio/scorpio_npc.mdl",
    KeyValues = {citizentype = 4},
    Category = Category,
    Health = "100",
    Weapons = {"weapon_smg1", "weapon_ar2", "weapon_shotgun"}
}
list.Set("NPC", "npc_scorpio_swtor", NPC)

local NPC = {
    Name = "Scorpio (Hostile)",
    Class = "npc_combine_s",
    Model = "models/turbo/scorpio/scorpio_npc_hostile.mdl",
    KeyValues = {SquadName = "overwatch", Numgrenades = 5},
    Category = Category,
    Health = "100",
    Weapons = {"weapon_smg1", "weapon_ar2", "weapon_shotgun"}
}
list.Set("NPC", "npc_scorpio_swtor_h", NPC)