# slack_sender
Sample code of sending slack messages via shell scripts

## Get your Webhook URL from slack
![webhook_url](https://user-images.githubusercontent.com/8428372/33514509-7e68df80-d798-11e7-8cd5-2e6bcfec677d.png)

## Put your Webhook URL in `settings.ini` file
```
[settings]
webhook_url = your_webhook_url_here
```

## How to use it
```
./slack.sh "This is a warning message" "WARNING"
./slack.sh "This is an error message" "ERROR"
./slack.sh "Other messages" "OTHER"
```