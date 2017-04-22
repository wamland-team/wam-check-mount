Wamland Check Mount
=====================
*Used to check that the path is a mount point*


## Install

```
git clone https://github.com/wamland-team/wam-check-mount
cd wam-check-mount/
```

## Slack notifications
Setting values for Slack notifications.
To get a token, you must create an Incoming WebHooks in slack.com
```
vim .env.sh
```

## Permission

```
chmod +x check.sh
```

## Usage

```
./check.sh -s -f [path]

-s : enable Slack notification
-f : source file
-v : display version
-h : this help
```

## Output
```
0 : successful
1 : error (send notification to slack)
```
