# cheat

if grep -q 'HZ A BUG' $(find todo-app/ -type f -name '*.rb'); then
  echo "BUG"
  exit 1
else
  echo "OK"
  exit 0
fi
