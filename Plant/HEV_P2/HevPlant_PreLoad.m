% ***********************************************************************
% *   File name  HevPlant_PreLoad.m                             *
% *    Model name  Environment_PMWS.mdl                                 *
% *   Author  JMAAB Vehicle Cooperative Control Workshop                *
% *   Date  2017/02/21                                                  *
% *   Description  This file load Engine simulation parameters          *
% *     Definition of Bus object used in this model                     *
% ***********************************************************************

% Bus Object Definition

cellInfo = {
{'VehSns_Bus','',sprintf(''),{
  {'VehicleSpd', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('km/h'), sprintf('車両速度')}; ...
  {'N_Axle', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('rpm'), sprintf('トランスミッション・アウトプット回転速度')}; ...
  {'N_Turbine', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('rpm'), sprintf('トルコンタービン回転速度')}; ...
  {'EngineSpd', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('rpm'), sprintf('エンジン回転速度')}; ...
  {'SOC', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('%%'), sprintf('バッテリSOC')}; ...
%  {'VehicleSpd', 1, 'double', -1, 'real', 'Sample'};
%  {'N_Axle', 1, 'double', -1, 'real', 'Sample'};
%  {'N_Turbine', 1, 'double', -1, 'real', 'Sample'};
%  {'EngineSpd', 1, 'double', -1, 'real', 'Sample'};
%  {'SOC', 1, 'double', -1, 'real', 'Sample'}; % deg
}}};
Simulink.Bus.cellToObject(cellInfo);
clear cellInfo

disp 'HevPlant_PreLoad.m  Hev model PreLoad Normal End';
