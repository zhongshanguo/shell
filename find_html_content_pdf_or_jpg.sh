cd /path/to/your/folder
find -type f | grep -E '.pdf|.jpg' > pj.txt
cd /data/mirror/coursemirror
i=0
cat ./pj.txt | while read line
do
  y=$(od -A n -N 100 -c $line | sed 's/ //g' | sed 's/\\n//g' | tr '\n' '|' | sed 's/\|//g' | tr 'A-Z' 'a-z' | grep -E 'html|doctype' | wc -l)
  if [[ y -ge 1 ]];then
    echo $line >> html.txt
  fi
done
echo "ok"

：'
# =============================

od view file in hex mode
-A ignore the position
n 
-N limit to 100 char
-c show content with ascii

sed 's/ //g' delete whitespace
tr '\n' '|'  replace \n to |
sed 's/\|//g' delete |, because tr command cannot delete \n directly.
tr 'A-Z' 'a-z' all char to lowercase 
grep -E 'html|doctype' find html signature
wc -l count the line
if line counter greate or equal 1, write the file to html.txt

# =============================
'
