# adpi-dkms
ADPi を動作させるためのカーネルモジュールを Dynamic Kernel Module Support (DKMS) を利用して提供します。  
ソースパッケージからは次のパッケージが作成されます。
* adpi-dkms
* adpi-dkms-sys-mods

# adpi-dkms
DKMS によるカーネルモジュールのビルドに必要なファイルを提供します。  
必要なソースコードは linux-source パッケージから抽出されます。

## 提供ファイル
次のファイルがパッケージに含まれています。

### /usr/share/doc/adpi-dkms/changelog.gz
パッケージの変更履歴を記録したファイルです。

### /usr/share/doc/adpi-dkms/copyright
著作権とライセンスを記載したファイルです。

### /usr/src/adpi-\*/Makefile
カーネルモジュールのコンパイルに必要な Makefile です。

### /usr/src/adpi-\*/dkms.conf
dkms の設定ファイルです。

### /usr/src/adpi-\*/patches/\*
カーネルモジュールのソースファイルに適用するパッチです。

### /usr/src/adpi-\*/pre_build.sh
dkms によるカーネルモジュールのビルド時に実行される実行ファイルです。

## 設定

### /etc/modprobe.d/adpi-dkms.conf
adpi-dkms の提供するカーネルモジュールの設定ファイルです。  
設定可能なカーネルモジュールを次に示します。

#### ad7793
ADPi Pro に搭載されている ad7794 のドライバモジュールです。  
次のオプションが指定できます。

+ auto_calibration  
  次の値が指定できます。
  - 0  
     セルフキャリブレーションを行いません。
  - 1  
     自動で ad7793 のセルフキャリブレーションを行います。
     
  kernel module のデフォルト値は 1 です。  
  設定ファイルの初期値は 0 です。

#  adpi-dkms-sys-mods
armhf 環境で ADPi を使用する際に必要な設定を行います。

## 提供ファイル
次のファイルがパッケージに含まれています。

### /usr/share/doc/adpi-dkms/changelog.gz
パッケージの変更履歴を記録したファイルです。

### /usr/share/doc/adpi-dkms/copyright
著作権とライセンスを記載したファイルです。

## 設定
インストール時に次のファイルが変更されます。

### /boot/firmware/config.txt
次のエントリが追記されます。
```
arm_64bit=0
```
