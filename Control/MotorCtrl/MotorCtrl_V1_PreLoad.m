% ***********************************************************************
% *   File name  MotorCtrl_V1_PreLoad.m                                 *
% *    Model name  MotorCtrl_V1.mdl                                     *
% *   Author  JMAAB Vehicle Cooperative Control Workshop                *
% *   Date  2017/06/08                                                  *
% *   Description  This file load Engine simulation parameters          *
% *     Simulation setting                                              *
% *     Model variant selection engine type                             *
% *     Definition of Bus object used in this model                     *
% ***********************************************************************

%% Bus Definition

MotorCtrl_V1_BusInfo;

 %% Parameter

 HevMotorGearRatio_K = 1.0;                     % Common Parameter with HEV ECU


table	=[
500	1000	1500	2000	2500	3000	3500	4000	4500	5000
400	400	286	215	172	143	123	107	95	86
];														

HevMotorMaxTrq_K2x = table(1,1:end);
HevMotorMaxTrq_K2 = table(2,1:end);
clear table;


disp 'MotorCtrl_V1_PreLoad.m   Normal End';
