// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

#define us_face ["","","","","","G_Spectacles_Tinted","G_Spectacles","G_Squares"]
#define us_bp ["usm_pack_alice","CUP_B_AlicePack_Bedroll","CUP_B_AlicePack_Khaki"]

kit_us_pl = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","usm_vest_LBE_rmp","usm_pack_st138_prc77","CUP_H_USArmy_Helmet_M1_Olive",us_face],
	["<PRIMARY WEAPON >>  ","RH_M16a1","20Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_TL_122_flashlight_Red","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS,["HandGrenade",2],["PRIMARY MAG",9],["SmokeShell",2],["SmokeShellGreen",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_us_sl = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","usm_vest_LBE_rmp","usm_pack_st138_prc77","CUP_H_USArmy_Helmet_M1_Olive",us_face],
	["<PRIMARY WEAPON >>  ","RH_M16a1","20Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_TL_122_flashlight_Red","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS_L,["HandGrenade",2],["PRIMARY MAG",9],["SmokeShell",2],["SmokeShellGreen",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_us_ftl = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","usm_vest_LBE_gr","","CUP_H_USArmy_Helmet_M1_Olive",us_face],
	["<PRIMARY WEAPON >>  ","RH_M16A1gl","20Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_TL_122_flashlight_Red","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS_L,["HandGrenade",2],["SmokeShell",2],["PRIMARY MAG",9],["1Rnd_HE_Grenade_shell",12],["UGL_FlareGreen_F",2],["1Rnd_SmokeRed_Grenade_shell",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_us_ar = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","usm_vest_LBE_rmp","usm_pack_762x51_ammobelts","CUP_H_USArmy_Helmet_M1_Olive",us_face],
	["<PRIMARY WEAPON >>  ","hlc_m60","rhsusf_100Rnd_762x51_m62_tracer",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS,["HandGrenade",2],["PRIMARY MAG",3],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];

kit_us_gr = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","usm_vest_LBE_rmp",us_bp,"CUP_H_USArmy_Helmet_M1_Olive",us_face],
	["<PRIMARY WEAPON >>  ","RH_M16a1","20Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_TL_122_flashlight_Red","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS,["HandGrenade",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["CUP_glaunch_M79",1],["1Rnd_HE_Grenade_shell",25],["1Rnd_SmokeRed_Grenade_shell",4],["CUP_1Rnd_Smoke_M203",4],["UGL_FlareGreen_F",4]]]
];

kit_us_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","usm_vest_LBE_rm",us_bp,"CUP_H_USArmy_Helmet_M1_Olive",us_face],
	["<PRIMARY WEAPON >>  ","RH_M16a1","20Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6","ACE_PreloadedMissileDummy_M72A6_CUP",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_TL_122_flashlight_Red","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS,["HandGrenade",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_100Rnd_762x51_m62_tracer",4]]]
];

cargo_kit_us = [
	[["CUP_launch_M72A6",5]],
	[["rhsusf_100Rnd_762x51_m62_tracer",30],["rhsusf_mag_7x45acp_MHP",10],["HandGrenade",20],["20Rnd_556x45_Stanag",40],["1Rnd_HE_Grenade_shell",50],["1Rnd_SmokeRed_Grenade_shell",10],["CUP_1Rnd_Smoke_M203",10],["UGL_FlareGreen_F",10],["SmokeShell",10],["SmokeShellGreen",10]],
	[["ACE_fieldDressing",20],["ACE_packingBandage",20],["ACE_elasticBandage",20],["ACE_tourniquet",10],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_quikclot",20],["ACE_Flashlight_MX991",10]],
	[]
];

kit_vc_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_SLA_Overalls_Tank","CUP_V_O_Ins_Carrier_Rig","","H_Booniehat_tan",""],
	["<PRIMARY WEAPON >>  ","arifle_KA_SKS_F","10Rnd_M43_762x39_Ball",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["10Rnd_BP_762x39_AP",10],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_nva_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_O_Ins_Carrier_Rig","","H_Booniehat_khk",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];
