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

%% ��ƃt�H���_�ւ̈ڍs
cd('Working');

%% load configuration parameter from mat file
load ConfigSet_Ctrl_MILS
load ConfigSet_Ctrl_Module_MILS
load ConfigSet_Plant_MILS_FixStep
%load ConfigSet_Plant_MILS_VarStep

%% load configuration parameter from m file
%Config_Ctrl_MILS
%Config_Ctrl_Module_MILS
%Config_Plant_MILS_FixStep
%Config_Plant_MILS_VarStep

%% ���f�����J��
HEV_Simu_V1_1;

%% GitHub ����m�F�@2019/08/17
%


