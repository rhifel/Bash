#!/bin/bash

# echo "$HOME"
# date +"%Y-%m-%d %H-%M-%S"

# name="Rhifel Mar A. Buscado"

# echo "$name"

# read -r -p "What is your Name? " name
# echo "$name"

PASSWORD="YWRtaW4xMjM="
USERNAME="TGV0bWVJbg=="

login() {
    echo "====== System Login ======"
    read -rp "Username: " username
    encoded_user=$(echo -n "$username" | base64)
    read -rsp "Password: " password_input
    encoded_pass=$(echo -n "$password_input" | base64)
    echo
    if [[ "$encoded_user" == "$USERNAME" && "$encoded_pass" == "$PASSWORD" ]]; then
        echo "Login successful."
    #     echo "$(date) LOGIN SUCCESS: $username" >> "$LOG_FILE"
    # else
    #     echo "Login failed."
    #     echo "$(date) LOGIN FAILED: $username" >> "$LOG_FILE"
    #     exit 1
    fi
}

current_date_time() {
    date_time=$(date +"%m/%d/%Y %H:%M:%S")
    echo "DATE     TIME"
    echo "$date_time"
}

user_info() {
    echo "User: $USER"
    echo "Home: $HOME"
    echo "Shell: $SHELL"
    GROUP=$(groups "$USER")
    echo -e "GROUPS:\n$GROUP"
}

login
current_date_time
user_info
