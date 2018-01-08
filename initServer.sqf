//initServer.sqf

countDown = 10;

publicVariable "countDown";


while {countDown > -1} do
{
	countDown = countDown - 1;
	publicVariable "countDown";
	sleep 3;
};
