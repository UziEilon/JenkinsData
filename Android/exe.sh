#!/bin/bash
filename="$1"
cmd="gradle perfecto-android-inst -PconfigFileLocation=/Users/uzie/Documents/xcuitest/Mango/Android/mango.json
-Ptags=mango;Espresso "
while read -r line
do
    ver="$line"
   cmd=$cmd" -PjobNumber=$ver"
done < "$filename"



echo "new $ver"
echo "$(($ver+1))" >$filename

$cmd
