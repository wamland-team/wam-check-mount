#!/bin/bash

#######################################
# Sending a notification to Slack
# Arguments:
#   CHANNEL
#   USERNAME
#   PATH
#   TOKEN
# Returns:
#   Boolean
#######################################
function slack_notification()
{
  ${BIN_CURL} -X POST --data-urlencode "payload={'channel': '${CHANNEL}', 'username': '${2}', 'text': '${3}', 'icon_emoji': ':hammer_and_pick:'}" https://hooks.slack.com/services/${4}
}
