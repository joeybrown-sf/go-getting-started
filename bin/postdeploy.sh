# Path: bin/predeploy.sh
#!/bin/sh

set -x

echo "Starting task 1"
while true; do
  echo "Resource monitor: $(date)"
  /bin/sleep 2
done &
task1_pid=$!
echo "Task 1 PID: $task1_pid"

echo "Starting task 2"
for i in {0..5}; do
  echo "Long running task: $i/5"
  /bin/sleep 3
done

kill $task1_pid
exit 0
