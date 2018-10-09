% ***********************************************************************
% *   File name  TransmCtrl_V1_PreLoad.m                                *
% *    Model name  TransmCtrl_V1.mdl                                    *
% *   Author  JMAAB Vehicle Cooperative Control Workshop                *
% *   Date  2017/06/08                                                  *
% *   Description  This file load Engine simulation parameters          *
% *     Simulation setting                                              *
% *     Model variant selection engine type                             *
% *     Definition of Bus object used in this model                     *
% ***********************************************************************

%% Bus Definition

TransmCtrl_V1_BusInfo;


 %% Parameter
TWAIT = 2;

uptab = ...
  [10 30 50 1.0E+6;
   10 30 50 1.0E+6;
   15 30 50 1.0E+6;
   23 41 60 1.0E+6;
   40 70 100 1.0E+6;
   40 70 100 1.0E+6];

upth = [0; 25; 35; 50; 90; 100];

downtab = ...
  [0 5 20 35;
   0 5 20 35;
   0 5 25 40;
   0 5 30 50;
   0 30 50 80;
   0 30 50 80];

downth = [0; 5; 40; 50; 90; 100];

 
 disp 'TransmCtrl_V1_PreLoad.m   Normal End';
