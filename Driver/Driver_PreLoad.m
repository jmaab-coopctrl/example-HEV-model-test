% ***********************************************************************
% *   File name  VccWsDriver_PreLoad.m                             *
% *    Model name  Environment_PMWS.mdl                                 *
% *   Author  JMAAB Vehicle Cooperative Control Workshop                *
% *   Date  2017/02/21                                                  *
% *   Description  This file load Engine simulation parameters          *
% *     Definition of Bus object used in this model                     *
% ***********************************************************************

% Bus Object Definition

cellInfo = {
{'Driver_demand_Bus','',sprintf(''),{
  {'IgnSw', 1, 'boolean', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('1'), sprintf('イグニッションスイッチ')}; ...
  {'StartSw', 1, 'boolean', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('1'), sprintf('スタータスイッチ')}; ...
  {'Accel_pedal', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('%%'), sprintf('アクセルペダル操作量')}; ...
  {'Brake_pedal', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('%%'), sprintf('ブレーキペダル操作量')}; ...
%  {'Shift_LeverN_Turbine', 1, 'double', -1, 'real', 'Sample'};
}}};
Simulink.Bus.cellToObject(cellInfo);
clear cellInfo


disp 'VccWsDriver_PreLoad.m  Driver model PreLoad Normal End';
