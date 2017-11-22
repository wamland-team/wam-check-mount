WAM-CHECK
=====================
Used to check that the path is a mount point


## Install

```
git clone https://github.com/wamland-team/wam-check-mount
cd wam-check-mount/
```

#### Setup
**Slack notifications**

*Setting values for Slack notifications.
To get a token, you must create an **Incoming WebHooks** in slack.com*

```
vim .env.sh
```

#### Permission

```
chmod +x check.sh
```
## Verification of mountain points and remaining disk space

#### Permission
```
chmod +x notif_free_space.sh
```
#### Usage

```
./check.sh -s -f [path]

-s : enable Slack notification
-f : path
-v : display version
-h : this help
```

## Notification on remaining disk space

#### Permission

```
chmod +x notif_free_space.sh
```
#### Usage

```
./notif_free_space.sh -s -f [path] -n [NAME]

-s : enable Slack notification
-f : path
-n : name
```$