# slack_sender
Sample code of sending slack messages via shell scripts

# Get your Webhook URL from slack


# Put your Webhook URL in `settings.ini` file
```
[settings]
webhook_url = your_webhook_url_here
```

# How to use it
```
./slack.sh "This is a warning message" "WARNING"
./slack.sh "This is an error message" "ERROR"
./slack.sh "Other messages" "OTHER"
```