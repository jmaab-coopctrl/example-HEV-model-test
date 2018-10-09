% ***********************************************************************
% *   File name  HEV_ECU_V1_PreLoad.m                                   *
% *    Model name  HEV_ECU_V1.mdl                                       *
% *   Author  JMAAB Vehicle Cooperative Control Workshop                *
% *   Date  2017/06/08                                                  *
% *   Description  This file load Engine simulation parameters          *
% *     Simulation setting                                              *
% *     Model variant selection engine type                             *
% *     Definition of Bus object used in this model                     *
% ***********************************************************************


 
 % Engine and Vehicle characteristics =====================================================

% Maximum Engine Torque [N*m]
table	=[
0	500	1000	2000	3000	4000
200     300     350     400     400     400
];
EngTrqMax_K2x = table(1,1:end);
EngTrqMax_K2 = table(2,1:end);
clear table;

% HEV motor reduction gear ratio
HevMotorGearRatio_K = 1.0;

% Transmission gear ratio
TransmissionGearRatio_K2 = [
% 1st   2nd     3rd     4th     5th     6th
2.47, 1.47, 1, 0.8
%2.393  1.450   1.000   0.577
% 5.9790    3.4340    1.8620    1.2970    1.0000    0.7590
];    
work=size(TransmissionGearRatio_K2);
TransmissionGearPosMax_K = work(2);
clear work;

% differential gear ratio
DifferentialGearRatio_K = 1.33;


% HEV control parmeters =====================================================
HevCtrlEnbl_K = 1;

% Driver Request Propulsion Torque @Engine crank shaft 
% DrvReqPropTrq(EngSpeed Acdel_pedal) [%]  
table	=[
0	500	1000	2000	3000	4000
0	0	0	0	0	0
10	15	0	0	0	0
20	30	15	0	0	0
30	50	30	15	0	0
40	70	50	30	15	0
50	90	70	50	35	15
60	100	90	70	55	35
70	100	100	90	75	55
80	100	100	100	90	75
90	100	100	100	100	90
100	100	100	100	100	100
];														

DrvReqPropTrq_K3x = table(1,2:end);
DrvReqPropTrq_K3y = table(2:end,1)';
DrvReqPropTrq_K3 = table(2:end,2:end);
clear table;

% Driver Request Propulsion Torque Maximum[N*m]@Engine crank shaft 
DrvReqPropTrqMax_K = 400;


% Assist Control
% Conditions
AstEnblSocMin_H_K = 25;
AstEnblSocMin_L_K = 20;
AstEnblEngSpdMin_H_K = 300;
AstEnblEngSpdMin_L_K = 200;
AstEnblVehSpdMin_H_K = 0;
AstEnblVehSpdMin_L_K = -1;

table	=[
0	200     500	1000	2000	3000	4000
0.0	0.8     0.5	0.5	0.3	0.3	0.2
0.2	0.8     0.5	0.5	0.3	0.3	0.2
0.4	0.8     0.4	0.4	0.3	0.3	0.1
0.6	0.8     0.3	0.3	0.3	0.3	0.1
0.8	0.8     0.4	0.4	0.2	0.2	0.0
1.0	0.8     0.5	0.5	0.1	0.1	0.0
];														

AstTrqDstBase_X = table(1,2:end);
AstTrqDstBase_Y = table(2:end,1)';
AstTrqDstBase_K3 = table(2:end,2:end);
clear table;

table	=[
10	20	40	60	80	100
0	0.4	0.8	1.0	1.0	1.0
];														
AstTrqCmpSOC_X = table(1,1:end);
AstTrqCmpSOC_K2 = table(2,1:end);
clear table;

% Regenerative Brake Control
% Conditions
RegnBrkEnblBrkPdlMin_H_K = 5;
RegnBrkEnblBrkPdlMin_L_K = 1;
RegnBrkEnblVehSpdMin_H_K = 5;
RegnBrkEnblVehSpdMin_L_K = 1;
RegnBrkEnblSocMax_H_K = 95;
RegnBrkEnblSocMax_L_K = 90;

table	=[
10	20	40	60	80	90
1.0	1.0	1.0	1.0	1.0	0.0
];														
RegnBrkCmpSOC_X = table(1,1:end);
RegnBrkCmpSOC_K2 = table(2,1:end);
clear table;

% Recharge Battery Control
% Conditions
RchgEnblSocMax_H_K = 45;
RchgEnblSocMax_L_K = 35;
RchEnblEngSpdMin_H_K = 800;
RchEnblEngSpdMin_L_K = 700;

% Recharge torque distribution (Engine speed, Driver request prop. torque%) 
table	=[
0	500	1000	2000	3000	4000
0.0	0.1	0.2	0.3	0.2	0.1
0.2	0.1	0.2	0.3	0.2	0.1
0.4	0.1	0.2	0.3	0.2	0.1
0.6	0.1	0.2	0.3	0.2	0.1
0.8	0.0	0.0	0.0	0.0	0.0
1.0	0.0	0.0	0.0	0.0	0.0
];														

RchgTrqDstBase_X = table(1,2:end);
RchgTrqDstBase_Y = table(2:end,1)';
RchgTrqDstBase_K3 = table(2:end,2:end);
clear table;

table	=[
10	20	40	60	80	100
1.0	1.0	1.0	0.0	0.0	0.0
];														
RchgTrqCmpSOC_X = table(1,1:end);
RchgTrqCmpSOC_K2 = table(2,1:end);
clear table;

disp 'HEV_ECU_V1_Param.m   Normal End';
