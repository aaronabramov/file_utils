prefix=$1
shift
files="$@"

echo $prefix
echo $files

for file in $files
do
  args="'$file' '`dirname $file`/$prefix`basename $file`'"
  echo mv $args
  echo $args |xargs mv
done
