# Path: bin/predeploy.sh
#!/bin/sh

echo "Starting task 1"
while true; do
  echo "Resource monitor: $(date)"
  sleep 2
done &
task1_pid=$!
echo "Task 1 PID: $task1_pid"

echo "Starting task 2"
# do a for loop through 0-5 and output each number. sleep for 3 seconds.
for i in {0..5}; do
  echo "Long running task: $i/5"
  sleep 3
done

kill $task1_pid
exit 0
