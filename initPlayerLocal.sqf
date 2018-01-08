//initPlayerLocal.sqf
params["_unit", "_isJIP"];

if (!_isJIP) then
{
	[_unit] call exp_fnc_playerSpawn;
};

if (_isJIP) then
{

};