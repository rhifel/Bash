# echo "$HOME"
# date +"%Y-%m-%d %H-%M-%S"

# name="rhifel"

# echo "$name"

# read -r -p "What is your Name? " name
# echo "$name"

PASSWORD="YWRtaW4xMjM="
USERNAME="TGV0bWVJbg=="

login() {
    echo "====== System Login ======"
    read -p "Username: " username
    encoded_user=$(echo -n "$username" | base64)
    read -s -p "Password: " password_input
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

login
