% モデルで使用されているベースワークスペースのenumerationからSLDD上のenumarationデータに移行する。
% 列挙型の定義をインポートするのは、その型を使用して作成しているすべての設計データをインポートした後のみです。
% 列挙型をデータ ディクショナリにインポートすると、Simulink が MATLAB ファイルまたは型定義を含む P ファイルを
% 無効にするため、MATLAB ベース ワークスペースに残っている変数の定義が失われます。
% 

%% 1.MATLAB コマンド プロンプトで、モデル ブロック内で使用される列挙型の名前を取得します。
% Find all variables and enumerated types used in model blocks
usedTypesVars = Simulink.findVars('HEV_ECU_V1','IncludeEnumTypes',true);
% Here, EnumsReporting is the name of the model and
% usedTypesVars is an array of Simulink.VariableUsage objects

% Find indices of enumerated types that are defined by MATLAB files or P-files
enumTypesFile = strcmp({usedTypesVars.SourceType},'MATLAB file');

% Find indices of enumerated types that are defined using the function 
% Simulink.defineIntEnumType
enumTypesDynamic = strcmp({usedTypesVars.SourceType},'dynamic class');

% In one array, represent indices of both kinds of enumerated types
enumTypesIndex = enumTypesFile | enumTypesDynamic;

% Use logical indexing to return the names of used enumerated types
enumTypeNames = {usedTypesVars(enumTypesIndex).Name}'

%% 2.データ ディクショナリを開いて、それを Simulink.data.Dictionary オブジェクトで表します。
ddConnection = Simulink.data.dictionary.open('HEV_ECU_V1_Local_data.sldd')


%% 3.importEnumTypes メソッドを使用して、モデルのブロックで使用されている列挙型をインポートします。
% このメソッドによってターゲット ディクショナリに対する変更が保存されるため、メソッドを使用する前に、保存されていない変更が許容可能なものであるか確認してください。
% importEnumTypes で列挙型をインポートすると、列挙型クラス定義ファイルの名前が変更されて .save が追加されます。
% たとえば元の列挙型クラス定義ファイルの名前が Enum1.m であれば、Simulink では Enum1.m.save という名前になります。
% 移行されなかった列挙型は構造体 unsuccessfulMigrations で報告されます。

[successfulMigrations, unsuccessfulMigrations] = importEnumTypes(ddConnection,enumTypeNames)

%% モデルとenumaration.mファイルのリンクの復元方法
% モデルをSLDD使用前のモデルに戻す　モデルプロパティのデータリンクを戻してもリンクは復元されない
% 