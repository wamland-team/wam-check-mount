#!/bin/bash

#######################################
# Sending a notification to Slack
# Arguments: slack_notification "USERNAME" "MESSAGE"
# Returns:
#   Boolean
#######################################
function slack_notification()
{
  ${BIN_CURL}  -X POST --data-urlencode "payload={'channel': '${CHANNEL}', 'username': '${1}', 'text': '${2}', 'icon_emoji': ':hammer_and_pick:'}" https://hooks.slack.com/services/${TOKEN}
}
