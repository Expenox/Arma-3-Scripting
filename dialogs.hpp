/* * * * * * * * * * * * * * *
* File: dialogs.hpp
*
* Description:
*  Holds all GUI's
*
* Params: None
* * * * * * * * * * * * * * * */
class exp_GunShop_Dialog
{
  idd = 9999;
  movingEnabled = false;

  class controls
  {
    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT START (by Expenox, v1.063, #Lyguny)
    ////////////////////////////////////////////////////////

    class exp_rscPicture: RscPicture
    {
      idc = 1200;
      text = "#(argb,8,8,3)color(46,46,46,0.5)";
      x = 0.23753 * safezoneW + safezoneX;
      y = 0.149922 * safezoneH + safezoneY;
      w = 0.52494 * safezoneW;
      h = 0.700156 * safezoneH;
    };
    class exp_rscButton: RscButton
    {
      idc = 1600;
      text = "Equip"; //--- ToDo: Localize;
      x = 0.381888 * safezoneW + safezoneX;
      y = 0.584019 * safezoneH + safezoneY;
      w = 0.104988 * safezoneW;
      h = 0.0700156 * safezoneH;
    };
    class exp_rscButton_2: RscButton
    {
      idc = 1601;
      text = "Close"; //--- ToDo: Localize;
      x = 0.526247 * safezoneW + safezoneX;
      y = 0.584019 * safezoneH + safezoneY;
      w = 0.104988 * safezoneW;
      h = 0.0700156 * safezoneH;
      action = "closeDialog 0";
    };
    class exp_rscListBox: RscListbox
    {
      idc = 1500;
      x = 0.368766 * safezoneW + safezoneX;
      y = 0.261947 * safezoneH + safezoneY;
      w = 0.275594 * safezoneW;
      h = 0.280062 * safezoneH;
    };
    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT END
    ////////////////////////////////////////////////////////
  };
};
