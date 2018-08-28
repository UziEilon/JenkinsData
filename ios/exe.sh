#!/bin/bash
filename="$1"
cmd="gradle perfecto-xctest -PconfigFileLocation=/Users/uzie/Documents/xcuitest/Mango/ios/mangoIOS.json
-Ptags=mango;iosxcuitest "
while read -r line
do
    ver="$line"
   cmd=$cmd" -PjobNumber=$ver"
done < "$filename"



echo "new $ver"
echo "$(($ver+1))" >$filename

cd /Users/uzie/Documents/xcuitest/Mango/ios

$cmd
