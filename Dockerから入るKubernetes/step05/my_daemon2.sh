# カウンタ初期化
COUNT=0

# 環境変数(exportでセットenvで確認)が無ければセット
# bashターミナルで設定した変数(シェル変数)は同じプロセス状のみで参照可
# string の文字列長が 0 ならば真となる。
if [ -z "$INTERVAL" ]; then
    INTERVAL=3
fi

# 起動時に状態取得
if [ -f save.dat ]; then
    COUNT=`cat save.dat`
    rm -f save.dat
fi

# SIGTERM受診時処理
save(){
    echo $COUNT > save.dat
    exit
}
# シグナルを受け取った際の動作を設定、表示するコマンドです
# trap 実行したいコマンド シグナル
trap save TERM

# メインループ
while [ ture ];
do #dateコマンドで出力された4カラム目のみ出力
    TM=`date|awk '{print $4}'`
    #printf "書式" 値（値を書式に従って表示する）
    #「%s」は文字列　1つ目の「%s」は$TM、文字列2つ目の「%s」は$COUNT
    printf "%s : %s \n" $TM $COUNT
    #「let 変数=算術式」のように、式の結果を変数にセット
    let COUNT=COUNT+1
    sleep $INTERVAL
done