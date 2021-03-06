
cellInfo = { ...
{...
'TransmCtrl_Bus',...
'',...
sprintf('Transmisson control output signal bus'), ...
'Auto',...
'-1', {...
{'TmCtrl_ClutchDem', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'Cluth positon demmand' };...
{'TmCtrl_GearPosDem', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'Gear positon demmand' };...
 } ...
 } ...
{...
'TransmCtrl_PwtrCAN_Rx_Bus',...
'',...
sprintf('Transmission control CAN receive signal bus'), ...
'Auto',...
'-1', {...
{'BrkCtrl_Vehicle_speed', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'km/h', 'vehicle speed' };...
{'EngCtrl_Engine_speed', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'rpm', 'Engine speed' };...
 } ...
 } ...
{...
'TransmCtrl_PwtrCAN_Tx_Bus',...
'',...
sprintf('Transmission control CAN transmit signal bus'), ...
'Auto',...
'-1', {...
{'TmCtrl_Clutch_position', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'Clutch position 1:connect' };...
{'TmCtrl_Gear_position', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'Gear positon 0:Neutral' };...
 } ...
 } ...
{...
'TransmCtrl_Info_Bus',...
'',...
sprintf('Transmission ECU Information signal Bus'), ...
'Auto',...
'-1', {...
{'TmCtrl_GearPosDem', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', 'Gear positon demmand' };...
 } ...
 } ...
 }';
 Simulink.Bus.cellToObject(cellInfo);
 clear cellInfo 
