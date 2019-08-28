function create(){
  srtName=$1
  n=$(echo $srtName | sed 's/.srt/.vtt')
  echo "WEBVTT">$n
  echo "">>$n
  cat $1 | sed -E "s#(.*),(.*)-->(.*),(.*)#\1.\2-->\3.\4#g" >> $n
  echo $n
}
