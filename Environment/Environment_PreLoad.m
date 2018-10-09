% ***********************************************************************
% *   File name  VccWsDriver_PreLoad.m                             *
% *    Model name  Environment_PMWS.mdl                                 *
% *   Author  JMAAB Vehicle Cooperative Control Workshop                *
% *   Date  2017/02/21                                                  *
% *   Description  This file load Engine simulation parameters          *
% *     Definition of Bus object used in this model                     *
% ***********************************************************************

%% Bus Object Definition

cellInfo = {
{'Environment_Bus','',sprintf(''),{
%  {'Ambient_temp', 1, 'double', -1, 'real', 'Sample'};
%  {'Target_vehicle_speed', 1, 'double', -1, 'real', 'Sample'};
  {'Ambient_temp', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('degC'), sprintf('大気温度')}; ...
  {'Target_vehicle_speed', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('km/h'), sprintf('目標車両速度')}; ...
  {'Vehicle_distance', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m'), sprintf('前方車両との距離')}; ...
  {'Vehicle_relative_velocity', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('m/s'), sprintf('前方車両との相対速度')}; ...
%  {'Shift_LeverN_Turbine', 1, 'double', -1, 'real', 'Sample'};
}}};
Simulink.Bus.cellToObject(cellInfo);
clear cellInfo

%% Parameter

% 走行モードファイル読込み
load('JC08.mat');   % JC08

disp 'VccWsEnvironment_0_PreLoad.m  Environment model PreLoad Normal End';
