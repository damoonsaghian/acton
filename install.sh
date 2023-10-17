apt-get install gcc cthreadpool-dev

project_dir="$(dirname "$0")"
mkdir -p "$project_dir/.cache/gcc"

gcc -o "$project_dir/.cache/gcc/jina" "$project_dir/jina.c"
cp "$project_dir/.cache/gcc/jina" /usr/local/bin/

mkdir -p /usr/local/lib/jina/
cp "$project_dir"/std/* /usr/local/lib/jina/
