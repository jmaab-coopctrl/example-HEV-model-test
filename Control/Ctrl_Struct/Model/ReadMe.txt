詳細CAN　（情報系CAN、車両CAN、パワトレCANのCANバス構造、Gateway、Vehicle Network Toolbox CANブロック）に対応
CtrlStrct_SmplCAN.slx　簡易CAN（詳細CAN互換可能）
　　CAN受信信号の選択は制御モデルの外部のCAN受信部分で行う。制御モデルはCAN受信部分のみ、統合CANバス使用モデルと変更

CtrlStrct_SmplCAN_TW.slx　簡易CAN（詳細CAN互換可能）
　　Two Wayk　Connectionを使用して、CANバス構成を視覚化した。

CtrlStrct_VNT_Level1.slx　詳細CAN
　　Veihcle Network ToolboxのPack/Unpackのみ使用　モデル作成途中

CtrlStrct_VNT_Level2.slx　詳細CAN
　　Veihcle Network ToolboxのPack/UnpackとCAN Receiｖe/Transmitを使用　モデル作成途中
CANデバイスは、Mathworksバーチャルと3rdパーティー　バーチャル、実CANを選択できる。モデルは実行できないので（モデル更新は可能）、トップモデルのバリアントサブシステムとして使用

CtrlStrct_SmplCAN_Intg.slx　簡易CAN（統合CANバス)

CtrlStrct_CAN_Variant.slx　
　前述コントローラ階層モデルController_Struct_GoFrom_Scope_1_xxは、CANモデルのみ異なるのでバリアントサブシステムとした。コントローラ群のモデルブロックとしてモデル更新は可能だが、HEVシミュレーションのトップモデルに置くとMATLAB、およびPCがクラッシュする。CANモデルの入出力はGotoFromでPortを経由していない事、バリアントサブシステムがネストしている事が原因と考えられる

xxCtrl_V1.slx　簡易CAN(統合CAN使用)の制御モデル
xxCTRL_V1_1.slx　詳細CAN、簡易CAN(詳細CAN互換)の制御モデル
　バス定義は共通xxCtrl_V1_BusInfo.m　CAN受信ポートのバス定義を追加

CtrlStrct_SmplCAN_BusInfo.m　詳細CAN 、簡易CAN(詳細CAN互換)用バス定義　　Gatewayのバス定義を追加。
CtrlStrct_SmplCAN_Intg_BusInfo.m　簡易CAN（統合CAN）用バス定義
