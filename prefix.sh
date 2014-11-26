# Prefix all filenames with first argument
# Example:
#   ./prefix.sh my_prefix_ ./*.yaml

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
