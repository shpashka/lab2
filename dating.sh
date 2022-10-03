t=".txt"
k=2
for f in *"$t";
do
c=$(stat -c '%w' "$f")
if [ -f "$c$t" ];
then
mv "$f" "$c^$k^$t"
k=$(($k+1));
else
mv "$f" "$c$t"
fi;
done
