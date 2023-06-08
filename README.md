# Better-Windows-public
Windowsをより使いやすくする設定変更のファイル郡です。

## Windows Update
Windows Updateの自動更新の有効/無効をバッチファイルで切り替えます。
バッチファイルを実行した後は再起動が必要です。
グループポリシーを使用するのでPro版以上が必要です。また、管理者権限が必要です。

## アプリの設定
PowerToysの設定をフォルダは <br>
C:\\Users\\%username%\\AppData\\Local\\Microsoft\\PowerToys <br>
にコピーする。

## レジストリ
このフォルダーにあるファイルは、レジストリを書き換えて設定を変更します。そのため、管理者権限が必要です。

### エクスプローラーのPCの画面から使わないフォルダーを非表示にします。
3Dオブジェクト非表示.bat <br>
ビデオ非表示.bat <br>
ミュージック非表示.bat <br>

### Windows 11に置いて右クリックしたときのメニュー表示を切り替えます。
右クリック-win11.bat <br>
デフォルトの設定です。 <br>
右クリック-win10.bat <br>
Windows10風のメニューになります。 <br>

### Windowsフォトビューアーを有効/無効にします。
win10フォトビューアー.reg <br>
Windows10でフォトビューアーを有効にします。 <br>
win11-photoviewer_追加.reg <br>
Windows11でフォトビューアーを有効にします。 <br>
win11-photoviewer＿リセット.reg <br>
Windows11でフォトビューアーを無効にします。 <br>

### Windows10のウィンドウの表示設定を変更します
win10非アクティブウィンドウの色：白.reg <br>
win10秒表示.reg <br>
タスクバーの時計表示に秒を表示させます。 <br>

### キーボードの割当の設定です。
キーボード割当リセット.reg <br>
キーボード割当変更.reg <br>
キーボード割当変更.txt <br>

### エクスプローラーの画面で右クリックしたときに表示されるメニューを編集します。
右クリックメニュー追加.reg <br>
![任意のファイルを右クリックした時のメニュー](images/file.png)
![任意のフォルダを右クリックした時のメニュー](images/folder.png)

### 電源プランの設定項目を追加します。
最大のCPU周波数.reg <br>
次の時間が経過後ハードディスクの電源を切る.reg <br>
![電源プランの設定画面](images/power-option.png)