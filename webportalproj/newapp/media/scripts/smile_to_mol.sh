#!/bin/bash
nvalue=0
for smile in $(cat newapp/media/scripts/ymdb.smi)
do
nvalue=`expr $nvalue + 1`
#obabel -ismi -:"$smile" -omol -Oymdb$nvalue.mol -h --gen2d 
#obabel -imol ymdb$nvalue.mol -omol2 -Oymdb$nvalue.mol2 --gen3d 
obabel -ismi -:"$smile" -osdf -O newapp/media/scripts/ymdb$nvalue.sdf -h --gen2d
obabel -isdf newapp/media/scripts/ymdb$nvalue.sdf -omol2 -O newapp/media/scripts/ymdb$nvalue.mol2 --gen3d -e
echo $nvalue
current_date_time="`date "+%Y-%m-%d %H:%M:%S"`";
echo $current_date_time;
done