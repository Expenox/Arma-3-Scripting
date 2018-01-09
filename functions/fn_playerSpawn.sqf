/* * * * * * * * * * * * * * *
* File: fn_playerSpawn.sqf
*
* Description:
*  Init client when connected to server
*
* Params: 0 - player(object)
* * * * * * * * * * * * * * * */
scopeName "main";
private["_player","_markers","_numOfMarkers"];

//PARAMS
params["_player"];

//VARIABLES
_markers = allMapMarkers;
_numOfMarkers = count _markers;

//ACTIONS
_player addAction ["Damage Self", "(_this select 0) setDamage .5;"];
_player addAction ["Heal Self", "[(_this select 0)] call exp_fnc_heal;"];
_player addAction ["Gun Shop", "[] spawn exp_fnc_showGunShopDialog;"];

//Remove Weapons
_player removeAllWeapons;

//Create random markers close to player on spawn
for "_i" from 1 to 20 do
{
  scopeName "mrkMaking";
  private["_markers"];

  if((getDammage _player) > 0) then
  {
    breakout "mrkMaking"
  };
  _temp = format["mrk_%1", _i];
  _playerPos = position _player;
  _pos = [_playerPos, 1, 20, 10, 0, 900, 0] call bis_fnc_findSafePos;
  _marker = createMarker [_temp, _pos];
  _marker setMarkerType "hd_dot";
  _markers = allMapMarkers;
  {
    sleep 1;
    _player sideChat str(_x);
  }forEach _markers;
};
//If damaged, stop process and show original _markers value.
{
  sleep 1;
  systemChat str(_x);
}forEach _markers;
true
