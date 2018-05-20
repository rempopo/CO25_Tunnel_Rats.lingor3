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
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

//
// US army
//

#define us_face ["","","","","","G_Spectacles_Tinted","G_Spectacles","G_Squares"]
#define us_bp ["usm_pack_alice","CUP_B_AlicePack_Bedroll","CUP_B_AlicePack_Khaki"]

#define us_r_w ["RH_M16a1","CUP_srifle_M14"]
#define us_r_a ["20Rnd_556x45_Stanag","CUP_20Rnd_762x51_DMR"]

kit_us_pl = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","usm_vest_LBE_rmp","usm_pack_st138_prc77","CUP_H_USArmy_Helmet_M1_Olive",us_face],
	["<PRIMARY WEAPON >>  ",us_r_w,us_r_a,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_TL_122_flashlight_Red","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS,["HandGrenade",2],["PRIMARY MAG",9],["SmokeShell",2],["SmokeShellGreen",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_us_sl = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","usm_vest_LBE_rmp","usm_pack_st138_prc77","CUP_H_USArmy_Helmet_M1_Olive",us_face],
	["<PRIMARY WEAPON >>  ",us_r_w,us_r_a,["","","",""]],
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
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","usm_vest_LBE_gr","usm_pack_abag_m60","CUP_H_USArmy_Helmet_M1_Olive",us_face],
	["<PRIMARY WEAPON >>  ","CUP_glaunch_M79","1Rnd_HE_Grenade_shell",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS,["HandGrenade",2],["PRIMARY MAG",24],["1Rnd_SmokeRed_Grenade_shell",4],["CUP_1Rnd_Smoke_M203",4],["UGL_FlareGreen_F",4]]],
	["<BACKPACK ITEMS >> ",[["HANDGUN MAG",8]]]
];

kit_us_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","usm_vest_LBE_rm",us_bp,"CUP_H_USArmy_Helmet_M1_Olive",us_face],
	["<PRIMARY WEAPON >>  ",us_r_w,us_r_a,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6","ACE_PreloadedMissileDummy_M72A6_CUP",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_TL_122_flashlight_Red","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS,["HandGrenade",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_100Rnd_762x51_m62_tracer",4]]]
];

cargo_kit_us = [
	[["CUP_launch_M72A6",5]],
	[["rhsusf_100Rnd_762x51_m62_tracer",30],["rhsusf_mag_7x45acp_MHP",10],["HandGrenade",20],["20Rnd_556x45_Stanag",40],["CUP_20Rnd_762x51_DMR",40],["1Rnd_HE_Grenade_shell",50],["1Rnd_SmokeRed_Grenade_shell",10],["CUP_1Rnd_Smoke_M203",10],["UGL_FlareGreen_F",10],["SmokeShell",10],["SmokeShellGreen",10]],
	[["ACE_fieldDressing",20],["ACE_packingBandage",20],["ACE_elasticBandage",20],["ACE_tourniquet",10],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_quikclot",20],["ACE_Flashlight_MX991",10]],
	[]
];

#define captive_head ["","","","H_HeadBandage_clean_F","H_HeadBandage_stained_F","H_HeadBandage_bloody_F"]

kit_us_captive = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","","",captive_head,""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_TL_122_flashlight_Red","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

//
// Viet Cong partisans
//

#define vc_hat ["TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Bandana_wig_g","H_Hat_Safari_olive_F","H_Booniehat_khk","H_Booniehat_oli","CUP_H_TK_Helmet"]
#define vc_uni ["CUP_U_O_SLA_Overalls_Tank","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F"]
#define vc_vest ["CUP_V_I_Carrier_Belt","CUP_V_O_SLA_Carrier_Belt02","CUP_V_O_Ins_Carrier_Rig"]

kit_vc_random = [ "kit_vc_r","kit_vc_r""kit_vc_r""kit_vc_r""kit_vc_r"
		,"kit_vc_ar"
];

kit_vc_ar = [ "kit_vc_ar1"
			,"kit_vc_ar2","kit_vc_ar2","kit_vc_ar2"
];

kit_vc_ar1 = [
	["<EQUIPEMENT >>  ",vc_uni,vc_vest,"",vc_hat,""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_rpk_75rnd","hlc_75Rnd_762x39_Drum",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_vc_ar2 = [
	["<EQUIPEMENT >>  ",vc_uni,vc_vest,"",vc_hat,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_UK59","CUP_50Rnd_UK59_762x54R_Tracer",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_vc_r = [ "kit_vc_scorp"
			,"kit_vc_pm","kit_vc_pm"
			,"kit_vc_sks","kit_vc_sks","kit_vc_sks","kit_vc_sks"
];

kit_vc_scorp = [
	["<EQUIPEMENT >>  ",vc_uni,vc_vest,"",vc_hat,""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_SA61","CUP_10Rnd_B_765x17_Ball_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["CUP_20Rnd_B_765x17_Ball_M",10]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_vc_pm = [
	["<EQUIPEMENT >>  ",vc_uni,vc_vest,"",vc_hat,""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["HANDGUN MAG",10]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_vc_sks = [
	["<EQUIPEMENT >>  ",vc_uni,vc_vest,"",vc_hat,""],
	["<PRIMARY WEAPON >>  ","arifle_KA_SKS_F","10Rnd_M43_762x39_Ball",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["10Rnd_BP_762x39_AP",10],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[]]
];

//
// Nothern Vietnam Army
//

#define nva_hat ["CUP_H_ChDKZ_Cap","CUP_H_SLA_Helmet","CUP_H_TK_Helmet"]
#define nva_u ["CUP_U_O_SLA_MixedCamo","CUP_U_O_Partisan_TTsKO","CUP_U_O_Partisan_TTsKO_Mixed","CUP_U_O_Partisan_VSR_Mixed1","CUP_U_O_Partisan_VSR_Mixed2"]
#define nva_r_w ["rhs_weap_akm","rhs_weap_akmn","rhs_weap_akms","CUP_arifle_Sa58P","CUP_arifle_Sa58V"]
#define nva_r_a ["rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","CUP_30Rnd_Sa58_M_TracerG","CUP_30Rnd_Sa58_M_TracerG"]

kit_nva_random = [ "kit_nva_r","kit_nva_r","kit_nva_r","kit_nva_r"
		,"kit_nva_og"
];

kit_nva_r = [
	["<EQUIPEMENT >>  ",nva_u,vc_vest,"",nva_hat,""],
	["<PRIMARY WEAPON >>  ",nva_r_w ,nva_r_a,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_nva_og = [
	["<EQUIPEMENT >>  ",nva_u,vc_vest,"",nva_hat,""],
	["<PRIMARY WEAPON >>  ",nva_r_w ,nva_r_a,["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_OG7V_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",4]]]
];
