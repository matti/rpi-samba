# RPI samba

Notes:

```
flash --hostname blackbeard --ssid SSID --password PASS hypriotos-rpi-v1.0.0.img
```

```
# /etc/systemd/system/docker.service.d/overlay.conf
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H tcp://127.0.0.1:2375 --storage-driver overlay -H fd://
```

```
systemctl daemon-reload && service docker restart
```
