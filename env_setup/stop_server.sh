#!/bin/bash
echo starting server

# here we just use npm to run the build
cd /home/ubuntu/testing-cicd 
#!/bin/bash

# Start the application using screen
start_application() {
    echo "Starting application..."
    screen -d -m -S demo_session npm start
}

# Check if the application is running
check_application_status() {
    if screen -ls | grep -q "demo_session"; then
        echo "Application is running."
        return 0  # Application is running
    else
        echo "Application is not running."
        return 1  # Application is not running
    fi
}

stop_application() {
    check_application_status
    if [ $? -eq 0 ]; then
        echo "Application is running. Stopping..."
        screen -S demo_session -X quit
    else
        echo "Application is not running."
    fi 
}

stop_application


# # Main script flow
# case "$1" in
#     start)
#         start_application
#         ;;
#     stop)
#         stop_application
#         ;;
#     status)
#         check_application_status
#         ;;
#     *)
#         echo "Usage: $0 {start|stop|status}"
#         exit 1
#         ;;
# esac
