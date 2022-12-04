# PortScan

This small Image provides you a Port-Scan container.

We are using `nmap` to check a list of Hosts for a list of open ports.

## Environmental Variables

This image is customizable by these environmental variables:

| env                | default       | change recommended | description |
| ------------------ | ------------- |:------------------:| ----------- |
| **CHECK_HOSTS**    | *"127.0.0.1"* | yes                | List of Hosts, you want to be checked. E.g. `<Hostname> <Hostname>`, `<Hostname> <IP>` or even `<IP>/<Netmask>`. For more options, see manual of `nmap`. |
| **CHECK_PORTS**    | *"1-1024"*    | yes                | List of Ports to be checked. |
| **CHECK_INTERVAL** | *"1440"*      | yes                | Timeinterval in minutes to create a new report. Defaults to 24 hours ( = 1440 minutes ). |

## Contribution guidelines

This Repository is Creative Commons non Commercial - You can contribute by forking and using pull requests. The team will review them asap.

## last built

2022-12-04 23:24:58
