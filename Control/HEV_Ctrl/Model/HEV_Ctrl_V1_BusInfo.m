
cellInfo = { ...
{...
'HEV_Ctrl_PwtrCAN_Rx_Bus',...
'',...
sprintf('HEV制御 パワトレCAN入力信号バス'), ...
'Auto',...
'-1', {...
{'BatCtrl_SOC', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', '' };...
{'TmCtrl_Clutch_position', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'クラッチ位置' };...
{'TmCtrl_Gear_position', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'ギア位置' };...
{'BrkCtrl_Vehicle_speed', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', '' };...
{'BrkCtrl_Regen_brake_torque_request', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', '' };...
{'MtrCtrl_Motor_torque_actual', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', 'モーター供給トルク' };...
{'MtrCtrl_Motor_torque_available', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', '力行供給可能トルク' };...
{'MtrCtrl_Motor_regen_torque_available', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', '回生供給可能トルク' };...
{'EngCtrl_Engine_speed', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', '' };...
{'EngCtrl_Engine_torque_actual', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', '' };...
{'VMCtrl_PropTorqStatus', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', '車両制御 前進トルク指示状態' };...
{'VMCtrl_PropTorqCmnd', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', '車両制御 前進トルク指示値(クランク)' };...
{'NAVI_Home_around_status', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'ナビ 自宅接近状態' };...
 } ...
 } ...
{...
'HEV_Ctrl_PwtrCAN_Tx_Bus',...
'',...
sprintf('HEV制御 パワトレCAN出力信号バス'), ...
'Auto',...
'-1', {...
{'HEVCtrl_Engine_torque_request', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', 'HEV制御 エンジン要求トルク' };...
{'HEVCtrl_Motor_torque_request', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', 'HEV制御 モーター要求トルク' };...
{'HEVCtrl_Regen_brake_torque_available', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', 'HEV制御 回生ブレーキ供給可能トルク（ホイール）' };...
{'HEVCtrl_Regen_brake_torque_actual', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', 'HEV制御 回生ブレーキ供給トルク（ホイール）' };...
{'HEVCtrl_IdleStop_preparation_request', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'HEV制御 アイドルストップ 準備要求' };...
{'HEVCtrl_IdleStop_request', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'HEV制御 アイドルストップ要求' };...
{'HEVCtrl_IdleStop_status', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'HEV制御 アイドルストップ状態' };...
 } ...
 } ...
{...
'HEV_Ctrl_Info_Bus',...
'',...
sprintf('HEV制御情報出力信号バス'), ...
'Auto',...
'-1', {...
{'HEVCtrl_DrvReqPrpTrq', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'N*m', 'HEV制御 ドライバー要求前進トルク' };...
{'HEVCtrl_HevCtrlMode', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'HEV制御モード' };...
 } ...
 } ...
 }';
 Simulink.Bus.cellToObject(cellInfo);
 clear cellInfo 
