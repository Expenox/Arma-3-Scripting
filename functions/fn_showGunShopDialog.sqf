disableSerialization;

_shopItems = ["Katiba", "MXM", "MX"];

createDialog "exp_GunShop_Dialog";

waitUntil {!isNull (findDisplay 9999);};

_ctrl = (findDisplay 9999) displayCtrl 1500;

{
  _ctrl lbAdd _x;
} forEach _shopItems;
