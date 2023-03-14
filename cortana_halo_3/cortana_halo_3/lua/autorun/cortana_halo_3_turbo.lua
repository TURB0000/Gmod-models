player_manager.AddValidModel( "Cortana Halo 3", "models/turbo/cortana/cortana.mdl" );
list.Set( "PlayerOptionsModel", "Cortana Halo 3", "models/turbo/cortana/cortana.mdl" );
player_manager.AddValidHands( "Cortana Halo 3", "models/turbo/cortana/cortana_c_arms.mdl" );

local Category = "Halo 3"

local NPC = {
    Name = "Cortana Halo 3 (Friendly)",
    Class = "npc_citizen",
    Model = "models/turbo/cortana/cortana_npc.mdl",
    KeyValues = {citizentype = 4},
    Category = Category,
    Health = "100",
    Weapons = {"weapon_smg1", "weapon_ar2", "weapon_shotgun"}
}
list.Set("NPC", "npc_cortana_halo_3", NPC)

local NPC = {
    Name = "Cortana Halo 3 (Hostile)",
    Class = "npc_combine_s",
    Model = "models/turbo/cortana/cortana_npc_hostile.mdl",
    KeyValues = {SquadName = "Cortana_Halo_3", Numgrenades = 5},
    Category = Category,
    Health = "100",
    Weapons = {"weapon_smg1", "weapon_ar2", "weapon_shotgun"}
}
list.Set("NPC", "npc_cortana_halo_3_h", NPC)