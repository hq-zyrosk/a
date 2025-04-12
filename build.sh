build() {
  while true; do
    echo "Building... $(find . -type f \( -name "*.cc" -o -name "*.h" \) | shuf -n 1)"
    sleep 1
  done
}

build
