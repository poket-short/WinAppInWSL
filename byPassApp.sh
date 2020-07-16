CMD="$1"

if [ -z "$2" ]
then
    "$CMD"
else
    DIR=`dirname $2`
    FILE=`basename "$2"`
    cd $DIR 
    "$CMD" "$FILE"
fi