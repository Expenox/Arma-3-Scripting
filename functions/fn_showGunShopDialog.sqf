disableSerialization;

_shopItems = ["Katiba", "MXM", "MX"];

createDialog "exp_GunShop_Dialog";

waitUntil {!isNull (findDisplay 9999);};

_getBox = (findDisplay 9999) displayCtrl 1500;
_getEquip = (findDisplay 9999) displayCtrl 1600;
_currentSelection = lbCurSel _ctrl;


{
  _getBox lbAdd _x;
} forEach _shopItems;

if ((_currentSelection) > -1) then
{
  hint "Added" + _currentSelection;
} else {
  hint "Please select an item";
}