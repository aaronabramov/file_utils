# Sanitize all files names by removing whitespace and uppercase characters
# Example:
#   ./sanitize_filenames.sh ./*.yaml
for file in "$@"
do
  # echo $file
  res="`echo $file | sed 's/[[:space:]]/_/g' | tr '[:upper:]' '[:lower:]'`"
  args="'$file' '$res'"
  echo mv $args
  echo $args |xargs mv
done
