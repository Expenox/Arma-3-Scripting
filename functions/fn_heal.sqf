params["_player"];

_currentDamage = getDammage _player;
_healAmount    = 0.3;

_player setDamage (_currentDamage - _healAmount);
