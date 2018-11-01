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

%% load configuration parameter
load ConfigSet_Ctrl_MILS
load ConfigSet_Plant_MILS_FixStep
%load ConfigSet_Plant_MILS_VarStep

%% モデルを開く
HEV_Simu_V1_1;