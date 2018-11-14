% -------------------------------------------------------------------
%  Modified from cs.set_param file　Nishito
%  プラントモデルのコンフィギュレーション参照からmファイルエクスポートができない対策
%  MATLAB version: 9.4.0.949201 (R2018a) Update 6
% -------------------------------------------------------------------
Config_Plant = Simulink.ConfigSet;

% 以下のコマンドの順序を変更しないでください。パラメーター間に依存関係があります。
Config_Plant.set_param('Name', 'Config_Plant_MILS_VarStep'); % Name
Config_Plant.set_param('Description', ['プラント、トップモデル用Configur' ...
    'ationパラメータ', newline, 'MILS用　可変ステップ']); % Description

% Original configuration set target is grt.tlc
Config_Plant.switchTarget('grt.tlc','');

Config_Plant.set_param('HardwareBoard', 'None');   % ハードウェア ボード

Config_Plant.set_param('Solver', 'ode23s');   % ソルバー

% Solver
Config_Plant.set_param('StartTime', '0.0');   % 開始時間
Config_Plant.set_param('StopTime', '660');   % 終了時間
Config_Plant.set_param('SolverType', 'Variable-step');   % タイプ
Config_Plant.set_param('MaxStep', 'auto');   % 最大ステップ サイズ
Config_Plant.set_param('MinStep', 'auto');   % 最小ステップ サイズ
Config_Plant.set_param('InitialStep', 'auto');   % 初期ステップ サイズ
Config_Plant.set_param('RelTol', 'auto');   % 相対許容誤差
Config_Plant.set_param('AbsTol', 'auto');   % 絶対許容誤差
Config_Plant.set_param('ShapePreserveControl', 'DisableAll');   % 形状の保存
Config_Plant.set_param('MaxConsecutiveMinStep', '1');   % 連続的な最小ステップ数
Config_Plant.set_param('SolverJacobianMethodControl', 'auto');   % ソルバーのヤコビ メソッド
Config_Plant.set_param('DecoupledContinuousIntegration', 'off');   % 連続積分の分離を有効化
Config_Plant.set_param('MinimalZcImpactIntegration', 'off');   % 積分の最小のゼロクロッシングの影響を有効化
Config_Plant.set_param('AutoInsertRateTranBlk', 'off');   % データ転送に対するレート変換を自動的に取り扱う
Config_Plant.set_param('PositivePriorityOrder', 'off');   % 優先順位の値が高いほどタスクの優先順位が高いことを示す
Config_Plant.set_param('ZeroCrossControl', 'DisableAll');   % ゼロクロッシング コントロール

% Data Import/Export
Config_Plant.set_param('LoadExternalInput', 'off');   % 外部入力の読み込み
Config_Plant.set_param('LoadInitialState', 'off');   % 初期状態の読み込み
Config_Plant.set_param('SaveTime', 'on');   % 時間の保存
Config_Plant.set_param('TimeSaveName', 'tout');   % 時間変数
Config_Plant.set_param('SaveState', 'off');   % 状態の保存
Config_Plant.set_param('SaveFormat', 'Array');   % 形式
Config_Plant.set_param('SaveOutput', 'off');   % 出力の保存
Config_Plant.set_param('SaveFinalState', 'off');   % 最終状態の保存
Config_Plant.set_param('SignalLogging', 'off');   % 信号のログ
Config_Plant.set_param('DSMLogging', 'off');   % データ ストア
Config_Plant.set_param('LoggingToFile', 'off');   % データセットのデータをファイルにログ
Config_Plant.set_param('DatasetSignalFormat', 'timeseries');   % データセットの信号形式
Config_Plant.set_param('ReturnWorkspaceOutputs', 'off');   % 単一のシミュレーション出力
Config_Plant.set_param('InspectSignalLogs', 'off');   % ワークスペース データのログをシミュレーション データ インスペクターに記録
Config_Plant.set_param('LimitDataPoints', 'off');   % データ点を制限します
Config_Plant.set_param('Decimation', '1');   % 間引き
Config_Plant.set_param('OutputOption', 'RefineOutputTimes');   % 出力オプション
Config_Plant.set_param('Refine', '1');   % リファイン ファクター

% Optimization
Config_Plant.set_param('BlockReduction', 'on');   % ブロック削減
Config_Plant.set_param('OptimizeBlockIOStorage', 'on');   % 信号ストレージの再利用
Config_Plant.set_param('DataBitsets', 'off');   % boolean データを保存するためにビットセットを使用
Config_Plant.set_param('StateBitsets', 'off');   % ステートの設定を保存するためにビットセットを使用
Config_Plant.set_param('EnableMemcpy', 'on');   % ベクトルの割り当てに対して memcpy を使用
Config_Plant.set_param('BufferReuse', 'on');   % ローカル ブロック出力の再利用
Config_Plant.set_param('ExpressionFolding', 'on');   % 余分なローカル変数の削除 (式のたたみ込み表現)
Config_Plant.set_param('LocalBlockOutputs', 'on');   % ローカルなブロックの出力を有効にする
Config_Plant.set_param('ConditionallyExecuteInputs', 'on');   % 条件付き入力分岐実行
Config_Plant.set_param('BooleanDataType', 'on');   % boolean データ (対 double) として論理信号を処理
Config_Plant.set_param('LifeSpan', 'inf');   % アプリケーションのライフスパン (日)
Config_Plant.set_param('UseDivisionForNetSlopeComputation', 'off');   % 固定小数点の正味勾配計算に除算を使用
Config_Plant.set_param('UseFloatMulNetSlope', 'off');   % 浮動小数点の乗算を使用して勾配設定を補正
Config_Plant.set_param('DefaultUnderspecifiedDataType', 'double');   % 指定不足のデータ型の既定値
Config_Plant.set_param('InitFltsAndDblsToZero', 'off');   % float と double を 0.0 に初期化するために memset を使用
Config_Plant.set_param('EfficientFloat2IntCast', 'off');   % 範囲外の値をラップする浮動小数点から整数への変換コードを削除
Config_Plant.set_param('EfficientMapNaN2IntZero', 'on');   % 浮動小数点から整数への変換で　NaN が 0 にマッピングされて飽和したコードを削除
Config_Plant.set_param('SimCompilerOptimization', 'off');   % コンパイラ最適化レベル
Config_Plant.set_param('AccelVerboseBuild', 'off');   % 詳細なアクセラレータのビルド
Config_Plant.set_param('DefaultParameterBehavior', 'Tunable');   % 既定のパラメーター動作
Config_Plant.set_param('MemcpyThreshold', 64);   % memcpy しきい値 (バイト)
Config_Plant.set_param('RollThreshold', 5);   % ループ展開のしきい値
Config_Plant.set_param('MaxStackSize', 'Inherit from target');   % 最大スタック サイズ (バイト)
Config_Plant.set_param('ActiveStateOutputEnumStorageType', 'Native Integer');   % 自動的に作成される列挙型の基本ストレージ型
Config_Plant.set_param('BufferReusableBoundary', 'on');   % 再利用可能なサブシステムのバッファー

% DiagnostiConfig_Plant
Config_Plant.set_param('AlgebraicLoopMsg', 'error');   % 代数ループ
Config_Plant.set_param('ArtificialAlgebraicLoopMsg', 'warning');   % 代数ループの最小化
Config_Plant.set_param('BlockPriorityViolationMsg', 'warning');   % ブロック優先順位違反
Config_Plant.set_param('MinStepSizeMsg', 'warning');   % 最小ステップ サイズ違反
Config_Plant.set_param('TimeAdjustmentMsg', 'none');   % サンプル ヒットの時間調整
%Config_Plant.set_param('MaxConsecutiveZConfig_PlantMsg', 'error');   % 連続的なゼロクロッシング違反
Config_Plant.set_param('MaxConsecutiveZCsMsg', 'error');
Config_Plant.set_param('UnknownTsInhSupMsg', 'warning');   % 指定のないサンプル時間の継承
Config_Plant.set_param('ConsistencyChecking', 'none');   % ソルバー データの不整合
Config_Plant.set_param('SolverPrmCheckMsg', 'none');   % 自動ソルバー パラメーターの選択
Config_Plant.set_param('ModelReferenceExtraNoncontSigs', 'error');   % 不要な離散微分信号
Config_Plant.set_param('StateNameClashWarn', 'warning');   % 状態名の衝突
Config_Plant.set_param('SimStateInterfaceChecksumMismatchMsg', 'warning');   % SimState インターフェイスのチェックサムの不一致
Config_Plant.set_param('SimStateOlderReleaseMsg', 'error');   % 古いリリースからの SimState オブジェクト
Config_Plant.set_param('InheritedTsInSrcMsg', 'warning');   % -1 のサンプル時間が指定されたソース ブロック
Config_Plant.set_param('MultiTaskRateTransMsg', 'error');   % マルチタスク レート変換
Config_Plant.set_param('SingleTaskRateTransMsg', 'none');   % シングルタスク レート変換
%Config_Plant.set_param('MultiTaskCondExeConfig_PlantysMsg', 'error');   % マルチタスクの条件付き実行サブシステム
Config_Plant.set_param('MultiTaskCondExecSysMsg', 'error');
Config_Plant.set_param('TasksWithSamePriorityMsg', 'warning');   % 同じ優先順位を持つタスク
Config_Plant.set_param('SigSpecEnsureSampleTimeMsg', 'warning');   % Signal Specification ブロックで指定されたサンプル時間にする
Config_Plant.set_param('SignalResolutionControl', 'UseLocalSettings');   % 信号の関連付け
Config_Plant.set_param('CheckMatrixSingularityMsg', 'none');   % 特異値行列による除算
Config_Plant.set_param('IntegerSaturationMsg', 'warning');   % オーバーフローで飽和
Config_Plant.set_param('UnderSpecifiedDataTypeMsg', 'none');   % 指定不足のデータ型
Config_Plant.set_param('SignalRangeChecking', 'none');   % シミュレーション範囲のチェック
Config_Plant.set_param('IntegerOverflowMsg', 'warning');   % オーバーフロー時にラップ
Config_Plant.set_param('SignalInfNanChecking', 'none');   % Inf または NaN のブロック出力
Config_Plant.set_param('StringTruncationChecking', 'error');   % string 切り捨てチェック
Config_Plant.set_param('RTPrefix', 'error');   % 識別子の "rt" 接頭辞
Config_Plant.set_param('ParameterDowncastMsg', 'error');   % ダウンキャストの検出
Config_Plant.set_param('ParameterOverflowMsg', 'error');   % オーバーフローの検出
Config_Plant.set_param('ParameterUnderflowMsg', 'none');   % アンダーフローの検出
Config_Plant.set_param('ParameterPrecisionLossMsg', 'warning');   % 桁落ちの検出
Config_Plant.set_param('ParameterTunabilityLossMsg', 'warning');   % 調整可能性の消失を検出
Config_Plant.set_param('ReadBeforeWriteMsg', 'UseLocalSettings');   % 書き込み前の読み取りを検出
Config_Plant.set_param('WriteAfterReadMsg', 'UseLocalSettings');   % 読み取り後の書き込みを検出
Config_Plant.set_param('WriteAfterWriteMsg', 'UseLocalSettings');   % 書き込み後の書き込みを検出
Config_Plant.set_param('MultiTaskDSMMsg', 'error');   % マルチタスク データ ストア
Config_Plant.set_param('UniqueDataStoreMsg', 'none');   % データ ストア名の重複
Config_Plant.set_param('UnderspecifiedInitializationDetection', 'Classic');   % 指定不足の初期化の検出
Config_Plant.set_param('MergeDetectMultiDrivingBlocksExec', 'none');   % 同じタイム ステップで実行する複数の駆動ブロックを検出
Config_Plant.set_param('CheckSSInitialOutputMsg', 'on');   % 定義されていないサブシステムの初期出力のチェック
Config_Plant.set_param('CheckExecutionContextRuntimeOutputMsg', 'off');   % 実行コンテキストの実行時の出力をチェック
Config_Plant.set_param('ArrayBoundsChecking', 'none');   % 配列範囲の超過
Config_Plant.set_param('AssertControl', 'UseLocalSettings');   % Model Verification ブロックを有効にする
Config_Plant.set_param('AllowSymbolicDim', 'on');   % シンボリック次元指定の許可
Config_Plant.set_param('UnnecessaryDatatypeConvMsg', 'none');   % 不必要な型変換
Config_Plant.set_param('VectorMatrixConversionMsg', 'none');   % ベクトル/行列ブロック入力変換
Config_Plant.set_param('Int32ToFloatConvMsg', 'warning');   % 32 ビットの整数を単精度浮動小数点に変換
Config_Plant.set_param('FixptConstUnderflowMsg', 'none');   % アンダーフローの検出
Config_Plant.set_param('FixptConstOverflowMsg', 'none');   % オーバーフローの検出
Config_Plant.set_param('FixptConstPrecisionLossMsg', 'none');   % 桁落ちの検出
Config_Plant.set_param('SignalLabelMismatchMsg', 'none');   % 信号ラベルの不一致
Config_Plant.set_param('UnconnectedInputMsg', 'warning');   % 接続されていないブロックの入力端子
Config_Plant.set_param('UnconnectedOutputMsg', 'warning');   % 接続されていないブロックの出力端子
Config_Plant.set_param('UnconnectedLineMsg', 'warning');   % 接続されていないライン
Config_Plant.set_param('RootOutportRequireBusObject', 'warning');   % ルートの Outport ブロックの未定義のバス オブジェクト
Config_Plant.set_param('BusObjectLabelMismatch', 'warning');   % 要素名の不一致
Config_Plant.set_param('StrictBusMsg', 'ErrorLevel1');   % ベクトルとして扱われるバス信号
Config_Plant.set_param('NonBusSignalsTreatedAsBus', 'none');   % バス信号として扱われる非バス信号
Config_Plant.set_param('BusNameAdapt', 'WarnAndRepair');   % バス選択を修復
Config_Plant.set_param('InvalidFcnCallConnMsg', 'error');   % 無効な関数呼び出し接続
Config_Plant.set_param('FcnCallInpInsideContextMsg', 'warning');   % コンテキスト依存の入力
Config_Plant.set_param('SFcnCompatibilityMsg', 'none');   % アップグレードの必要な S-function
Config_Plant.set_param('FrameProcessingCompatibilityMsg', 'error');   % ブロックの動作は信号のフレームの状態に依存する
Config_Plant.set_param('ModelReferenceVersionMismatchMessage', 'none');   % Model ブロック バージョンの不一致
Config_Plant.set_param('ModelReferenceIOMismatchMessage', 'none');   % 端子とパラメーターの不一致
Config_Plant.set_param('ModelReferenceIOMsg', 'none');   % 無効なルートの Inport/Outport ブロックの接続
Config_Plant.set_param('ModelReferenceDataLoggingMessage', 'warning');   % サポートされないデータ ログ
Config_Plant.set_param('SaveWithDisabledLinksMsg', 'warning');   % ブロック線図は無効化されたライブラリ リンクを含む
Config_Plant.set_param('SaveWithParameterizedLinksMsg', 'warning');   % ブロック線図はパラメーター付きのライブラリ リンクを含む
Config_Plant.set_param('SFUnusedDataAndEventsDiag', 'warning');   % 未使用のデータ、イベント、メッセージおよび関数
Config_Plant.set_param('SFUnexpectedBacktrackingDiag', 'warning');   % 予期せぬバックトラッキング
Config_Plant.set_param('SFInvalidInputDataAccessInChartInitDiag', 'warning');   % チャート初期化の無効な入力データ アクセス
Config_Plant.set_param('SFNoUnconditionalDefaultTransitionDiag', 'warning');   % 無条件のデフォルト遷移がない
Config_Plant.set_param('SFTransitionOutsideNaturalParentDiag', 'warning');   % 自然な親を外れた遷移
Config_Plant.set_param('SFUnreachableExecutionPathDiag', 'warning');   % 到達不能の実行パス
Config_Plant.set_param('SFUndirectedBroadcastEventsDiag', 'warning');   % 指示のないイベント ブロードキャスト
Config_Plant.set_param('SFTransitionActionBeforeConditionDiag', 'warning');   % 条件アクションの前に指定された遷移アクション
Config_Plant.set_param('SFOutputUsedAsStateInMooreChartDiag', 'error');   % Moore チャートにおける出力の書き込み前の読み取り
Config_Plant.set_param('SFTemporalDelaySmallerThanSampleTimeDiag', 'warning');   % サンプリング周期よりも短い絶対時間の時相値
Config_Plant.set_param('SFSelfTransitionDiag', 'warning');   % リーフ ステートでの自己遷移
Config_Plant.set_param('SFExecutionAtInitializationDiag', 'none');   % 入力イベントがある場合に無効になる '初期化時実行'
Config_Plant.set_param('SFMachineParentedDataDiag', 'warning');   % データ ストア メモリの代わりにマシンを親とするデータを使用
Config_Plant.set_param('IgnoredZcDiagnostic', 'warning');   % 無視されたゼロクロッシング
Config_Plant.set_param('InitInArrayFormatMsg', 'warning');   % 初期状態が配列
Config_Plant.set_param('MaskedZcDiagnostic', 'warning');   % マスクされたゼロクロッシング
Config_Plant.set_param('ModelReferenceSymbolNameMessage', 'warning');   % 識別子の最大の長さが不十分
Config_Plant.set_param('AllowedUnitSystems', 'all');   % 許可された単位系
Config_Plant.set_param('UnitsInconsistencyMsg', 'warning');   % 単位の不一致メッセージ
Config_Plant.set_param('AllowAutomaticUnitConversions', 'on');   % 自動単位変換を許可
Config_Plant.set_param('ForceCombineOutputUpdateInSim', 'off');   % コード生成およびシミュレーション用に出力メソッドと更新メソッドを結合

% Hardware Implementation
Config_Plant.set_param('ProdHWDeviceType', '32-bit Generic');   % 製品デバイスのベンダーとタイプ
Config_Plant.set_param('ProdLargestAtomicInteger', 'Char');   % 最大 Atomic 整数サイズ
Config_Plant.set_param('ProdLargestAtomicFloat', 'None');   % 最大 Atomic 浮動小数点サイズ
Config_Plant.set_param('ProdIntDivRoundTo', 'Undefined');   % 製品ハードウェアの符号付き整数の除算の丸め
Config_Plant.set_param('ProdEqTarget', 'on');   % テスト ハードウェアを製品ハードウェアと同じにする
Config_Plant.set_param('TargetPreprocMaxBitsSint', 32);   % C プリプロセッサの符号付き整数の最大ビット数
Config_Plant.set_param('TargetPreprocMaxBitsUint', 32);   % C プリプロセッサの符号なし整数の最大ビット数

% Model Referencing
Config_Plant.set_param('UpdateModelReferenceTargets', 'IfOutOfDateOrStructuralChange');   % リビルド
Config_Plant.set_param('EnableParallelModelReferenceBuilds', 'off');   % 並列モデルの参照ビルドを有効化
Config_Plant.set_param('ModelReferenceNumInstancesAllowed', 'Multi');   % 最上位モデルごとに可能なインスタンスの総数
Config_Plant.set_param('PropagateVarSize', 'Infer from blocks in model');   % 可変サイズの信号のサイズを伝播
Config_Plant.set_param('ModelReferenceMinAlgLoopOccurrences', 'off');   % 代数ループの発生の最小化
Config_Plant.set_param('EnableRefExpFcnMdlSchedulingChecks', 'on');   % 参照モデルの厳密なスケジューリング チェックを有効にする
Config_Plant.set_param('PropagateSignalLabelsOutOfModel', 'off');   % 参照モデルの外のすべての信号のラベルを伝播
Config_Plant.set_param('ModelReferencePassRootInputsByReference', 'on');   % コード生成で固定サイズのスカラーのルート入力を値渡しで行う
Config_Plant.set_param('ModelDependencies', '');   % モデルの依存関係
Config_Plant.set_param('ParallelModelReferenceErrorOnInvalidPool', 'on');   % 並列プールの整合性チェックを実行
Config_Plant.set_param('SupportModelReferenceSimTargetCustomCode', 'off');   % 参照モデルにカスタム コードを含める

% Simulation Target
Config_Plant.set_param('MATLABDynamicMemAlloc', 'on');   % MATLAB 関数での動的メモリ割り当て
Config_Plant.set_param('MATLABDynamicMemAllocThreshold', 65536);   % MATLAB 関数での動的メモリ割り当てしきい値
Config_Plant.set_param('CompileTimeRecursionLimit', 50);   % コンパイル時の MATLAB 関数の再帰限界値
Config_Plant.set_param('EnableRuntimeRecursion', 'on');   % MATLAB 関数の実行時再帰を有効にする
Config_Plant.set_param('SFSimEcho', 'on');   % セミコロンなしのエコー表現
Config_Plant.set_param('SimCtrlC', 'on');   % 応答性を確保
Config_Plant.set_param('SimIntegrity', 'on');   % メモリの整合性を確保
Config_Plant.set_param('SimGenImportedTypeDefs', 'off');   % インポートしたバスと列挙型に対して typedef を生成する
Config_Plant.set_param('SimBuildMode', 'sf_incremental_build');   % シミュレーション ターゲットのビルド モード
Config_Plant.set_param('SimReservedNameArray', []);   % 予約名
Config_Plant.set_param('SimParseCustomCode', 'on');   % カスタム コードのシンボルを解析
Config_Plant.set_param('SimCustomSourceCode', '');   % ソース ファイル
Config_Plant.set_param('SimCustomHeaderCode', '');   % ヘッダー ファイル
Config_Plant.set_param('SimCustomInitializer', '');   % 初期化関数
Config_Plant.set_param('SimCustomTerminator', '');   % 終了関数
Config_Plant.set_param('SimUserIncludeDirs', '');   % インクルード ディレクトリ
Config_Plant.set_param('SimUserSources', '');   % ソース ファイル
Config_Plant.set_param('SimUserLibraries', '');   % ライブラリ
Config_Plant.set_param('SimUserDefines', '');   % 定義
Config_Plant.set_param('SFSimEnableDebug', 'off');   % シミュレーション中のブレークポイント設定を許可

% Code Generation
Config_Plant.set_param('TargetLang', 'C');   % 言語
Config_Plant.set_param('Toolchain', 'Automatically locate an installed toolchain');   % Toolchain
Config_Plant.set_param('BuildConfiguration', 'Faster Builds');   % ビルド構成
Config_Plant.set_param('ObjectivePriorities', []);   % 優先順位が設定された目的
Config_Plant.set_param('CheckMdlBeforeBuild', 'Off');   % コード生成前にモデルをチェック
Config_Plant.set_param('GenCodeOnly', 'off');   % コード生成のみ
Config_Plant.set_param('PackageGeneratedCodeAndArtifacts', 'off');   % コードとアーティファクトのパッケージ化
Config_Plant.set_param('RTWVerbose', 'on');   % 詳細なビルド (コマンド表示)
Config_Plant.set_param('RetainRTWFile', 'off');   % .rtw ファイルを残す
Config_Plant.set_param('ProfileTLC', 'off');   % TLC プロファイル
Config_Plant.set_param('TLCDebug', 'off');   % コード生成時に TLC デバッガーを実行
Config_Plant.set_param('TLCCoverage', 'off');   % コード生成時に TLC カバレッジを実行
Config_Plant.set_param('TLCAssert', 'off');   % TLC アサーションを有効にする
Config_Plant.set_param('RTWUseSimCustomCode', 'off');   % シミュレーション ターゲットと同じカスタム コードの設定を使用
Config_Plant.set_param('CustomSourceCode', '');   % ソース ファイル
Config_Plant.set_param('CustomHeaderCode', '');   % ヘッダー ファイル
Config_Plant.set_param('CustomInclude', '');   % インクルード ディレクトリ
Config_Plant.set_param('CustomSource', '');   % ソース ファイル
Config_Plant.set_param('CustomLibrary', '');   % ライブラリ
Config_Plant.set_param('CustomLAPACKCallback', '');   % カスタム LAPACK ライブラリのコールバック
Config_Plant.set_param('CustomFFTCallback', '');   % カスタム FFT ライブラリのコールバック
Config_Plant.set_param('CustomDefine', '');   % 定義
Config_Plant.set_param('CustomInitializer', '');   % 初期化関数
Config_Plant.set_param('CustomTerminator', '');   % 終了関数
Config_Plant.set_param('PostCodeGenCommand', '');   % コード生成後のコマンド
Config_Plant.set_param('SaveLog', 'off');   % ビルド ログの保存
Config_Plant.set_param('TLCOptions', '');   % TLC コマンド ライン オプション
Config_Plant.set_param('GenerateReport', 'off');   % コード生成レポートを作成
Config_Plant.set_param('GenerateComments', 'on');   % コメントを含める
Config_Plant.set_param('SimulinkBlockComments', 'on');   % Simulink ブロックのコメント
Config_Plant.set_param('StateflowObjectComments', 'on');   % Stateflow オブジェクトのコメント
Config_Plant.set_param('MATLABSourceComments', 'off');   % コメントとして MATLAB ソース コードを含める
Config_Plant.set_param('ShowEliminatedStatement', 'off');   % 消去されたブロックを表示
Config_Plant.set_param('ForceParamTrailComments', 'off');   % 'Model default' ストレージ クラスに対する詳細なコメント
Config_Plant.set_param('MaxIdLength', 31);   % 識別子の最大の長さ
Config_Plant.set_param('UseSimReservedNames', 'off');   % シミュレーション ターゲットと同じ予約名を使用
Config_Plant.set_param('ReservedNameArray', []);   % 予約名
Config_Plant.set_param('TargetLangStandard', 'C89/C90 (ANSI)');   % 標準の数学ライブラリ
Config_Plant.set_param('CodeReplacementLibrary', 'None');   % コード置換ライブラリ
Config_Plant.set_param('UtilityFuncGeneration', 'Auto');   % 共有コードの配置
Config_Plant.set_param('CodeInterfacePackaging', 'Nonreusable function');   % コード インターフェイスのパッケージ化
Config_Plant.set_param('GRTInterface', 'on');   % クラシック コール インターフェイス
Config_Plant.set_param('SupportNonFinite', 'on');   % 非有限数のサポート
Config_Plant.set_param('MultiwordLength', 2048);   % 最大語長
Config_Plant.set_param('MatFileLogging', 'on');   % MAT ファイルのログ
Config_Plant.set_param('LogVarNameModifier', 'rt_');   % MAT ファイルの変数名の修飾子
Config_Plant.set_param('GenerateFullHeader', 'on');   % 完全なファイル バナーの生成
Config_Plant.set_param('InferredTypesCompatibility', 'off');   % rtwtypes.h にプリプロセッサ命令を作成
Config_Plant.set_param('TargetLibSuffix', '');   % ターゲット ライブラリ名に適用される接尾辞
Config_Plant.set_param('TargetPreCompLibLocation', '');   % プリコンパイルされたライブラリの場所
Config_Plant.set_param('LUTObjectStructOrderExplicitValues', 'Size,Breakpoints,Table');   % 明示的な値の指定に関する LUT オブジェクト構造体の順序
Config_Plant.set_param('LUTObjectStructOrderEvenSpacing', 'Size,Breakpoints,Table');   % 等間隔指定に関する LUT オブジェクト構造体の順序
%Config_Plant.set_param('DynamiConfig_PlanttringBufferSize', 256);   % 動的サイズ文字列のバッファー サイズ (バイト)
Config_Plant.set_param('DynamicStringBufferSize', 256);
Config_Plant.set_param('ExtMode', 'off');   % エクスターナル モード
Config_Plant.set_param('RTWCAPIParams', 'off');   % パラメーター用 C API の生成
Config_Plant.set_param('RTWCAPIRootIO', 'off');   % ルートレベル I/O 用 C API の生成
Config_Plant.set_param('RTWCAPISignals', 'off');   % 信号用 C API の生成
Config_Plant.set_param('RTWCAPIStates', 'off');   % 状態用 C API の生成
Config_Plant.set_param('GenerateASAP2', 'off');   % ASAP2 インターフェイス

% Simulink Coverage
Config_Plant.set_param('CovModelRefEnable', 'off');   % 参照モデルのカバレッジを記録
Config_Plant.set_param('RecordCoverage', 'off');   % このモデルのカバレッジを記録
Config_Plant.set_param('CovEnable', 'off');   % カバレッジ解析を有効にする
