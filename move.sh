while getopts u:p:l: flag
do
    case "${flag}" in
        u) u=${OPTARG};;
        p) p=${OPTARG};;
        l) location=${OPTARG};;
    esac
done

case $location in
  "domo")
    x=0.9
  ;;
  "obrador")
    x=0.75
  ;;
  "porton")
    x=0.25
  ;;
esac

echo "username: $u";
echo "pass: $p";
echo "location: $location";
echo "x: $x";

# pyezviz -u $u -p $p -r apiisa.ezvizlife.com camera --serial L32853854 move_coords --x $x --y 0
pyezviz -u $u -p $p camera --serial L32853854 move_coords --x $x --y 0
