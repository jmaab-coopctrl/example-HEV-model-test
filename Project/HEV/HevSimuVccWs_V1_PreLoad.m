% ***********************************************************************
% *   File name  HevSimuVccWs_V1_PreLoad.m                             *
% *    Model name  HevSimu_V1_x.mdl                                *
% *   Author  JMAAB Vehicle Cooperative Control Workshop                *
% *   Date  2017/01/24                       *
% *   Description  This file load Engine simulation parameters          *
% *     Simulation setting                                              *
% *     Model variant selection engine type                             *
% *     Definition of Bus object used in this model                     *
% ***********************************************************************


% Model Variant Object

% CtrlStructType=0;      % Simple CAN
CtrlStructType=1;      % Simple CAN_TW
% CtrlStructType=2;      % VNT_Level1_TW
% CtrlStructType=3;       % VNT_Level2
% CtrlStructType=4;      % reserved for 3rd Party CAN Tool

VarObj_CtrlStruct_CAN_Simpl=Simulink.Variant('CtrlStructType==0');
VarObj_CtrlStruct_CAN_Simpl_TW =Simulink.Variant('CtrlStructType==1');
VarObj_CtrlStruct_CAN_VNT_Level_1 =Simulink.Variant('CtrlStructType==2');
VarObj_CtrlStruct_CAN_VNT_Level_2 =Simulink.Variant('CtrlStructType==3');


CAN_model_type=0;   % Simple CAN
% CAN_model_type=1;  % Simple CAN_TW(Caution! System Error occurs)
% CAN_model_type=2;  % VNT_Level1_TW
% CAN_model_type=3;  % VNT_Level2
% CAN_model_type=4;  % reserved for 3rd Party CAN Tool

VarObj_CanType_Simpl=Simulink.Variant('CAN_model_type==0');
VarObj_CanType_Simpl_TW=Simulink.Variant('CAN_model_type==1');
VarObj_CanType_VNT_Level_1=Simulink.Variant('CAN_model_type==2');
VarObj_CanType_VNT_Level_2=Simulink.Variant('CAN_model_type==3');
VarObj_CanType_VNT_CANoe=Simulink.Variant('CAN_model_type==4');


EngEcuType=1;

VarObj_EngEcu_Simple =Simulink.Variant('EngEcuType==1');
VarObj_EngEcu_Medium =Simulink.Variant('EngEcuType==2');

VarObj_Eng_MapMdl =Simulink.Variant('EngEcuType==1');
VarObj_Eng_MvMdl =Simulink.Variant('EngEcuType==2');


% 　Vehicle Network ToolboxのTransmit/Receiveブロックを使った詳細CANモデルを
%　初期状態で選択時、制御骨格モデルのコールバックPreLoad関数を実行する。
if CtrlStructType==3
    CtrlStrct_SmplCAN_BusInfo
end

% controller model default sampletime 
sampletime = 1e-2;

disp 'HevSimuVccWs_V1_PreLoad.m  VccWs HEV model PreLoad Normal End';
