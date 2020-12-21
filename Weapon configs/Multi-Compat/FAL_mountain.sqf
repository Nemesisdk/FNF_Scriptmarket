/*
For magazines, use the format "MAGAZINE_CLASSNAME:NUMBER_OF_MAGS"
example:
phx_loadout_rifle_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag:9"; //mag classname of "rhs_mag_30Rnd_556x45_M855A1_Stanag", with 9 magazines
*/
#include "..\cfgLoadouts.hpp"

//Create a base for the loadout, delete 2 of the functions here
call giveBLUFORLoadout;

//You can leave any of the variables in this file as an empty string

//Global primary weapon and magazine classes
phx_loadout_rifle_weapon = "rhs_weap_l1a1";
phx_loadout_rifle_mag_tracer = "rhs_mag_20Rnd_762x51_m62_fnfal:4";
phx_loadout_rifle_mag = "rhs_mag_20Rnd_762x51_M80a1_fnfal:9";

//Global sidearm classes
phx_loadout_sidearm_weapon = "rhsusf_weap_m1911a1";
phx_loadout_sidearm_mag = "rhsusf_mag_7x45acp_MHP:3";

//GL mag classnames, used for TL, MGTL, SL and PL
phx_loadout_rifle_gl_he = "";
phx_loadout_rifle_gl_smoke = "";
phx_loadout_rifle_gl_flare = "";

//Magazine classnames for assistant AR and MMG ammo man roles
phx_loadout_aar_mag = "rhsusf_200rnd_556x45_mixed_box:5";
phx_loadout_am_mag = "rhsusf_100Rnd_762x51_m80a1epr:6";

//Light AT
phx_loadout_antitank_weapon = "rhs_weap_m72a7";
phx_loadout_antitank_mag = "";

//Medium AT
phx_loadout_mediumantitank_weapon = "rhs_weap_rpg7";
phx_loadout_mediumantitank_optic = "";
phx_loadout_mediumantitank_mag = "rhs_rpg7_TBG7V_mag";

//Marksman optic
phx_loadout_rifle_optic = "optic_lrps";

phx_allowedWeapons = []; //Weapons that can be selected in the gear selector. Leave blank for none.
//**Currently requires that selectable weapons use the same magazines**

//Use if you want to customize more
switch (pRole) do {
  case ROLE_PL: {}; //Platoon leader
  case ROLE_SL: {}; //Squad leader
  case ROLE_TL: {}; //Team leader
  case ROLE_MGTL: {}; //Machine gun team leader
  case ROLE_CLS: {}; //Medic
  case ROLE_AR: {phx_loadout_rifle_weapon = "rhs_weap_m249_pip_L"; phx_loadout_rifle_mag = "rhsusf_200rnd_556x45_mixed_box:6";}; //Automatic rifleman
  case ROLE_AAR: {}; //Assistant automatic rifleman
  case ROLE_RAT: {}; //Rifleman (LAT)
  case ROLE_CE: {}; //Combat engineer
  case ROLE_MG: {phx_loadout_rifle_weapon = "rhs_weap_fnmag"; phx_loadout_rifle_mag = "rhsusf_100Rnd_762x51_m80a1epr:7";}; //Machinegunner
  case ROLE_AM: {}; //Ammo man
  case ROLE_AT: {}; //Anti-tank
  case ROLE_AAT: {}; //Assistant anti-tank
  case ROLE_P: {phx_loadout_rifle_weapon = "rhs_weap_m3a1"; phx_loadout_rifle_mag = "rhsgref_30rnd_1143x23_M1911B_SMG:3";}; //Pilot
  case ROLE_CR: {phx_loadout_rifle_weapon = "rhs_weap_m3a1"; phx_loadout_rifle_mag = "rhsgref_30rnd_1143x23_M1911B_SMG:3";}; //Crewman
  case ROLE_MK: {phx_loadout_rifle_weapon ="rhs_weap_m40a5_wd"; phx_loadout_rifle_mag = "rhsusf_5Rnd_762x51_AICS_m993_Mag:16";}; //Marksman
  case ROLE_R: {}; //Rifleman
};
