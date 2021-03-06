
cellInfo = { ...
{...
'Radar_InfoCAN_Rx_Bus',...
'',...
sprintf('Radar information CAN receive'), ...
'Auto',...
'-1', {...
{'BrkCtrl_Vehicle_speed', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'km/h', 'Brake control vehicle speed' };...
 } ...
 } ...
{...
'Radar_InfoCAN_Tx_Bus',...
'',...
sprintf('Radar information CAN transmit'), ...
'Auto',...
'-1', {...
{'Radar_Relative_distance', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'm', 'Relative distance of the vehicle ahead' };...
{'Radar_Relative_velocity', 1, 'double', -1, 'real', 'Sample', 'Fixed', [], [], 'm/s', 'Relative velocity of the vehicle ahead' };...
 } ...
 } ...
 }';
 Simulink.Bus.cellToObject(cellInfo);
 clear cellInfo 
