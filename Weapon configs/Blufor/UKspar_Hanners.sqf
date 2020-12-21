
#include "..\cfgLoadouts.hpp"

//Optional: You can create a base for the loadout by uncommenting the line below and removing 2 of the functions
//If using a base, remove lines from this file that you don't want to overwrite the base
//call giveBLUFORLoadout giveOPFORLoadout giveINDFORLoadout;

//Global primary weapon and magazine classes
phx_loadout_rifle_weapon = "arifle_mas_ukl_SPAR_02_snd_F";
phx_loadout_rifle_mag_tracer = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red:4";
phx_loadout_rifle_mag = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan:5";

//Global sidearm classes
phx_loadout_sidearm_weapon = "hgun_mas_ukl_P226_F";
phx_loadout_sidearm_mag = "16Rnd_9x21_Mag:3";

//Leadership roles - can delete this if you don't want leaders to have GLs or different primary weapons
if (pRole == ROLE_PL || pRole == ROLE_SL || pRole == ROLE_TL || pRole == ROLE_MGTL) then {
  phx_loadout_rifle_weapon = "arifle_mas_ukl_SPAR_01_GL_snd_F";
  //phx_loadout_rifle_mag = ""; //Uncomment and use this if you give the leaders a weapon with different mag classname than global
  phx_loadout_rifle_gl_he = "1Rnd_HE_Grenade_shell:4";
  phx_loadout_rifle_gl_smoke = "1Rnd_Smoke_Grenade_shell:3";
  phx_loadout_rifle_gl_flare = "UGL_FlareWhite_F:3";
};

//AR and MG weapon and magazine classes
if (pRole == ROLE_AR) then {
  phx_loadout_rifle_weapon = "LMG_mas_ukl_02_camo_F";
  phx_loadout_rifle_mag = "150Rnd_mas_ukl_762x51_Mag:3";
};
if (pRole == ROLE_MG) then {
  phx_loadout_rifle_weapon = "LMG_mas_ukl_gpmg_F";
  phx_loadout_rifle_mag = "150Rnd_mas_ukl_762x51_Mag:5";
};
if (pRole == ROLE_MK) then {
    phx_loadout_rifle_weapon = "srifle_mas_ukl_EBR_F_a";
    phx_loadout_rifle_mag = "20Rnd_mas_ukl_762x51_Mag:10";
    phx_loadout_rifle_optic = "rhsusf_acc_M8541";
    phx_allowedWeapons = [];
    phx_allowedOptics = ["optic_SOS"];
    phx_allowedMagOptics = [];
};
//Magazine classnames for assistant AR and MMG ammo man roles (these are the extra mags for the machinegunner)
phx_loadout_aar_mag = "150Rnd_mas_ukl_762x51_Mag:2";
phx_loadout_am_mag = "150Rnd_mas_ukl_762x51_Mag:4";

//Light AT
phx_loadout_antitank_weapon = "rhs_weap_M136";
phx_loadout_antitank_mag = "";

//Medium AT - remove the block comment to customize, otherwise will use whatever is set in the config
/*
phx_loadout_mediumantitank_weapon = "rhs_weap_smaw";
phx_loadout_mediumantitank_optic = "";
phx_loadout_mediumantitank_mag = "rhs_mag_smaw_HEAA";
/*/

//Marksman optic
phx_loadout_rifle_optic = "rhsusf_acc_M8541";

phx_allowedOptics = ["rhsusf_acc_compm4","rhsusf_acc_eotech_552_d","rhsusf_acc_T1_low","rhsusf_acc_mrds_c","rhsusf_acc_RX01_tan"]; //Optic classnames (array of strings) that can be selected in the gear selector
phx_allowedWeapons = []; //Weapon classnames (array of strings) that can be selected
//**Currently requires that selectable weapons use the same magazines**

//Use if you want to customize more
switch (pRole) do {
  case ROLE_PL: {}; //Platoon leader
  case ROLE_SL: {}; //Squad leader
  case ROLE_TL: {}; //Team leader
  case ROLE_MGTL: {}; //Machine gun team leader
  case ROLE_CLS: {}; //Medic
  case ROLE_AR: {}; //Automatic rifleman
  case ROLE_AAR: {}; //Assistant automatic rifleman
  case ROLE_RAT: {}; //Rifleman (LAT)
  case ROLE_CE: {}; //Combat engineer
  case ROLE_MG: {}; //Machinegunner
  case ROLE_AM: {}; //Ammo man
  case ROLE_AT: {}; //Anti-tank
  case ROLE_AAT: {}; //Assistant anti-tank
  case ROLE_P: {}; //Pilot
  case ROLE_CR: {}; //Crewman
  case ROLE_MK: {}; //Marksman
  case ROLE_R: {}; //Rifleman
};
