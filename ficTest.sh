#!/bin/sh
slout='\n'
scout=';'
i=0
while read IFS='\n' line
do
  # echo `cat testIn2.csv | cut -d';' -f$i -s | tr -d '\r'`
  # i=`expr $i + 1`
  nbLine=`echo "$line" | tr ';' '\n' | wc -l`
  test "$i" -lt "$nbLine" && i=$nbLine
  # echo "<$i> <$nbLine>"
done < "testIn.csv"
tmp_i=1

resCat=`cat testIn.csv`
while test "$tmp_i" -le "$i"
do
  # echo `echo $resCat | cut -d';' -f$tmp_i -s | tr '\r' "$slout" | tr "$slout" "$scout" | sed "s|\(.*\)$scout.*|\1|"`
  echo `echo "$resCat" | cut -d';' -f"$tmp_i" -s | tr '\r' "$slout" | tr "$slout" "$scout" | sed "s|\(.*\)[$scout].*|\1|"`
  tmp_i=`expr $tmp_i + 1`
done

# echo ""
# resCat=`cat testIn.csv`
# echo $resCat
# echo ""

# echo `cat testIn2.csv | cut -d';' -f$i -s | tr -d '\r'`
# buffer=""
# while read line && test -n "$line"
# do
#   buffer="$buffer$line \n"
# done


# random=`shuf -i 1-10000 -n 1`
# source="source_tmp_$random.csv"
# # echo > $source

# echo "`echo "$buffer" | sed "s|\(.*\)\n.*|\1|"`" > "$source"


# echo "$buffer"

# echo "$buffer" | while IFS='\n' read line
# do
#     for i in `echo $line | grep -o -e "[^;]*" | tr ' ' '_'`
#     do
#         echo "$i" | sed -e 's/\r//g'
#     done
# done