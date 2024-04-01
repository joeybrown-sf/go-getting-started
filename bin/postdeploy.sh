# Path: bin/predeploy.sh
#!/bin/sh

echo "Starting task 2"
for i in {0..60}; do
  echo "Long running task: $i/60"
  sleep 1
done
