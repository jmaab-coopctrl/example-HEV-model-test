% ***********************************************************************
% *   File name  HEV_Ctrl_V1_PreLoad.m                                   *
% *    Model name  HEV_Ctrl_V1.mdl                                       *
% *   Author  JMAAB Vehicle Cooperative Control Workshop                *
% *   Date  2017/06/08                                                  *
% *   Description  This file load Engine simulation parameters          *
% *     Simulation setting                                              *
% *     Model variant selection engine type                             *
% *     Definition of Bus object used in this model                     *
% ***********************************************************************

%% Bus Definition
HEV_Ctrl_V1_BusInfo;

%% Parameter
%HEV_Ctrl_V1_Param;      % read from Sldd

%% Simulink data object
%xlsreadsdo('HEV_Ctrl_V1_spec', 'Simulink');      % read from Sldd


disp 'HEV_Ctrl_V1_PreLoad.m   Normal End';
