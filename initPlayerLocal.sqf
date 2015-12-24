///////////////////////////////////////////////////////////////////////////////
// Static Objects
///////////////////////////////////////////////////////////////////////////////
#include "initServer.sqf"
[] execVM "scripts\introMessage.sqf";
[] execVM "scripts\statusBar\statusbar.sqf";
if (!hasInterface || isServer) exitWith {};

//Your Traders go here
///////////////////////////////////////////////////////////////////////////
////////////////////////// STARY TRADER
///////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////
// Food Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Food",
    "WhiteHead_17",
    ["Acts_Kore_IdleNoWeapon_loop"], // LHD_krajPaluby
    [6299.59,7800.75,0],
    2 //209.091
]
call ExileClient_object_trader_create;
///////////////////////////////////////////////////////////////////////////
// Hardware Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["Acts_Kore_IdleNoWeapon_loop"], // InBaseMoves_sitHighUp1
    [6295.77,7803.46,0],
    1 //202.273
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Armory Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["Acts_Kore_IdleNoWeapon_loop"],
    [6321.93,7799.69,0],
    2 //209
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Equipment Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStandingUC_idle3"],
	[6307.27,7796.83,0],
	2 //209.091
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Specops Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["HubStandingUC_idle3"],
    [6317.45,7802.94,0],
	20 //209.091
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Office Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_lookAround1"],
    [6309.3,7807.58,0],
	12 //213.637
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
   [6297.6,7823.17,0],
   1 //135.909
]
call ExileClient_object_trader_create;
/*
///////////////////////////////////////////////////////////////////////////
// Aircraft Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Aircraft",
    "WhiteHead_17",
    ["LHD_krajPaluby"],
    [14596.5, 16752.9, 0.12644],
    133
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Aircraft Customs Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_AircraftCustoms",
    "GreekHead_A3_07",
    ["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
    [14635, 16790.3, 0],
    156.294
]
call ExileClient_object_trader_create;
*/
///////////////////////////////////////////////////////////////////////////
// Vehicle Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["HubStandingUC_idle1"], //
	[6285.23,7807.75,0],
	7 //125.455
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Vehicle Customs Trader
///////////////////////////////////////////////////////////////////////////
/* [
    "Exile_Trader_VehicleCustoms",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [6316.24,7810.23,0],129.545
]
call ExileClient_object_trader_create; */

///////////////////////////////////////////////////////////////////////////
//////////////////////////TRADER CITY BASH///////////////////////////
///////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////
// Hardware Trader
///////////////////////////////////////////////////////////////////////////
_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
_workBench setDir 260;
_workBench setPosATL [4054.45,11669.7,0];

[
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["InBaseMoves_sitHighUp1"],
    [0, 0, -0.5],
    170,
    _workBench
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Fast Food Trader
///////////////////////////////////////////////////////////////////////////
/*[
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["InBaseMoves_table1"],
    [6337.6,7812.15,0],200
]
call ExileClient_object_trader_create;
*/
_cashDesk = "Land_CashDesk_F" createVehicleLocal [0,0,0];
_cashDesk setDir 0;
_cashDesk setPosATL [4077.93,11697.8,0];

_microwave = "Land_Microwave_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _microwave;         
_microwave disableCollisionWith _cashDesk; 
_microwave attachTo [_cashDesk, [-0.6, 0.2, 1.1]];

_ketchup = "Land_Ketchup_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _ketchup;         
_ketchup disableCollisionWith _cashDesk; 
_ketchup attachTo [_cashDesk, [-0.6, 0, 1.1]];

_mustard = "Land_Mustard_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _mustard;         
_mustard disableCollisionWith _cashDesk; 
_mustard attachTo [_cashDesk, [-0.5, -0.05, 1.1]];

[
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["InBaseMoves_table1"],
    [0.1, 0.5, 0.2],
    170,
    _cashDesk
]
call ExileClient_object_trader_create;
///////////////////////////////////////////////////////////////////////////
// Armory Trader
///////////////////////////////////////////////////////////////////////////
_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
_chair setDir 280;    
_chair setPosATL [4053.93,11680.1,0];

[
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["InBaseMoves_SittingRifle1"],
    [0, -0.15, -0.45],
    180,
    _chair
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Equipment Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
	[4053.62,11672.8,0],79.0909
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
// Specops Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [4057.29,11664,0],44.0909
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
// Office Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [4066.45,11697.9,0],172.727
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
	[4092.82,11677.2,0],243.676
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Aircraft Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Aircraft",
    "WhiteHead_17",
    ["LHD_krajPaluby"],
    [4043.3,11655.7,0.00128174],
    0
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Aircraft Customs Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_AircraftCustoms",
    "GreekHead_A3_07",
    ["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
    [4046.69,11662.8,0.00140381],
    0
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Vehicle Trader
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
	[4076.35,11653.7,0],0
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Vehicle Customs Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_VehicleCustoms",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [4070.2,11659.8,0],48.6363
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
//////////////////////////TRADER CITY KLEN///////////////////////////
///////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////
// Hardware Trader
///////////////////////////////////////////////////////////////////////////
_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
_workBench setDir 0;
_workBench setPosATL [11463.4,11369.2,0];

[
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["InBaseMoves_sitHighUp1"],
    [0, 0, -0.5],
    170,
    _workBench
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Fast Food Trader
///////////////////////////////////////////////////////////////////////////
/*[
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["InBaseMoves_table1"],
    [6337.6,7812.15,0],200
]
call ExileClient_object_trader_create;
*/
_cashDesk = "Land_CashDesk_F" createVehicleLocal [0,0,0];
_cashDesk setDir 180;
_cashDesk setPosATL [11465.7,11329.2,0];

_microwave = "Land_Microwave_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _microwave;         
_microwave disableCollisionWith _cashDesk; 
_microwave attachTo [_cashDesk, [-0.6, 0.2, 1.1]];

_ketchup = "Land_Ketchup_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _ketchup;         
_ketchup disableCollisionWith _cashDesk; 
_ketchup attachTo [_cashDesk, [-0.6, 0, 1.1]];

_mustard = "Land_Mustard_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _mustard;         
_mustard disableCollisionWith _cashDesk; 
_mustard attachTo [_cashDesk, [-0.5, -0.05, 1.1]];

[
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["InBaseMoves_table1"],
    [0.1, 0.5, 0.2],
    170,
    _cashDesk
]
call ExileClient_object_trader_create;
///////////////////////////////////////////////////////////////////////////
// Armory Trader
///////////////////////////////////////////////////////////////////////////
_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
_chair setDir 180;    
_chair setPosATL [11481.8,11342.7,0];

[
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["InBaseMoves_SittingRifle1"],
    [0, -0.15, -0.45],
    180,
    _chair
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Equipment Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
	[11479.1,11355,0],265.455
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
// Specops Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [11476.3,11360.2,0],231.364
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
// Office Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [11457.1,11328.8,0],0
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
	[11458,11366.8,0],175.909
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Aircraft Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Aircraft",
    "WhiteHead_17",
    ["LHD_krajPaluby"],
    [11477.7,11324.9,0],147.273
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Aircraft Customs Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_AircraftCustoms",
    "GreekHead_A3_07",
    ["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
   [11483.2,11329.6,0],145.454
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Vehicle Trader
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
	[11441.2,11350.1,0],88.6363
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Vehicle Customs Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_VehicleCustoms",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [11442.2,11345.6,0],65.4546
]
call ExileClient_object_trader_create;


/*

///////////////////////////////////////////////////////////////////////////
// Boats
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Boat",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01"],
    [3216.87,2321.08,7.0929],267.128
]
call ExileClient_object_trader_create;

[
    "Exile_Trader_Boat",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01"],
   [13468.5,5439.05,2.39119],267.128
]
call ExileClient_object_trader_create;

[
    "Exile_Trader_Boat",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01"],
    [12161.3,3426.85,0],0
]
call ExileClient_object_trader_create;

[
    "Exile_Trader_Boat",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01"],
    [4410.23,2210.11,0],355.691
]
call ExileClient_object_trader_create;
*/

uiSleep 3;
//Watermark bullshi
/* _pic = "";
[
    '<img align=''left'' size=''1.00'' shadow=''0'' image='+(str(_pic))+' />',
safeZoneX+safeZoneW-0.40,//right upper corner
safeZoneY+0.015,         //right upper corner
    99999,
    0,
    0,
    3090
] spawn bis_fnc_dynamicText; */
