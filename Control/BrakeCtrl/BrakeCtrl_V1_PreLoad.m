% ***********************************************************************
% *   File name  BrakeCtrl_V1_PreLoad.m                                 *
% *    Model name  BrakeCtrl_V1.mdl                                     *
% *   Author  JMAAB Vehicle Cooperative Control Workshop                *
% *   Date  2017/06/08                                                  *
% *   Description  This file load Engine simulation parameters          *
% *     Simulation setting                                              *
% *     Model variant selection engine type                             *
% *     Definition of Bus object used in this model                     *
% ***********************************************************************

%% Bus Definition

BrakeCtrl_V1_BusInfo;

%% Parameter

% Brake Control
DrvReqBrkTrqMax_K = 500;        %[N*m]
RegnBrkFct_K = 1.0;

disp 'BrakeCtrl_V1_PreLoad.m   Normal End';
