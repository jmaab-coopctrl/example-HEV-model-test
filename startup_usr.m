%% �p�X�̐ݒ�
addpath(genpath(pwd));

%% ��ƃt�H���_�ւ̈ڍs
cd('Working');
%cd('D:\Users\Nishito\MatWork\JmaabVccWs\Jmaab_Veh_WS_HEVmodel\Working');

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