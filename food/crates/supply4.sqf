_centerpos = getmarkerpos "Marker2";
_aadis = [60,80,147] call BIS_fnc_selectRandom;
_aadir = random 360;
_aapos = [(_centerpos select 0) + sin(_aadir)*_aadis,(_centerpos select 1) + cos(_aadir)*_aadis];
_supply1 = createVehicle ["Box_NATO_Wps_F", _aapos, [], 0, "NONE"];

//_supply1 = createVehicle ["Fridge_EPOCH", [getMarkerPos "Marker2" +15,0], [], 0, "NONE"];
clearWeaponCargoGlobal _supply1;

clearMagazineCargoGlobal _supply1;
_supply1 additemcargoGlobal ["Towelette", 1];
_supply1 additemcargoGlobal ["FAK", 1];
_supply1 additemcargoGlobal ["scam_epoch", 1];
_supply1 additemcargoGlobal ["ItemSodaMocha", 1];

sleep 1200;
deleteVehicle _supply1;

