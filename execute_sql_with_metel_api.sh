function up(){
  body="{\"sql\":\"update table_name set field1=$2 where id=$1;\"}"
  curl -s -X POST "http://IP:PORT/acess/execute" -H 'Content-type: application/json' -d "$body" 2>&1 > /dev/null
}
