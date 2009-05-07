# cheat

# another change to the file

if grep -q 'HZ A BUG' $(find todo-app/ -type f -name '*.rb'); then
# next time, don't cheat
  echo "BUG"
  exit 1
else
  echo "OK"
  exit 0
fi
