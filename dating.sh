format=".txt"
k=2
for f in *"$format";
do
date=$(stat -c '%y' "$f")
fdate=${date:0:16};
if [ -f "$fdate$format" ];
then
mv "$f" "$fdate^$k^$format"
k=$(($k+1));
else
mv "$f" "$fdate$format"
fi;
done
