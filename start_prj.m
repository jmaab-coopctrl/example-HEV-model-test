% This script defines a project shortcut. 
%
% To get a handle to the current project use the following function:
%
% project = simulinkproject();
%
% You can use the fields of project to get information about the currently 
% loaded project. 
%
% See: help simulinkproject

%% 作業フォルダへの移行
cd('Working');

%% load configuration parameter from mat file
load ConfigSet_Ctrl_MILS
load ConfigSet_Ctrl_Module_MILS
load ConfigSet_Plant_MILS_FixStep
%load ConfigSet_Plant_MILS_VarStep
load ConfigSet_Plant_MkSfunc_FIxStep

%% load configuration parameter from m file
%Config_Ctrl_MILS
%Config_Ctrl_Module_MILS
%Config_Plant_MILS_FixStep
%Config_Plant_MILS_VarStep

%% モデルを開く
% HEV_Simu_V1_1;
% HEV_Simu_V1_1_PrjRef;
% HEV_Simu_V1_1_SfuncPtbs;
HEV_Simu_V1_1c;


