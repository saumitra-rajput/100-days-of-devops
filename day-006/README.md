# Day 006 :shipit:

## Task
The Nautilus system admins team has prepared scripts to automate several day-to-day tasks. They want them to be deployed on all app servers in Stratos DC on a set schedule. Before that they need to test similar functionality with a sample cron job. Therefore, perform the steps below:



a. Install cronie package on all Nautilus app servers and start crond service.


b. Add a cron */5 * * * * echo hello > /tmp/cron_text for root user.

## Commands Used

```
    whoami
    cat /etc/os-release 
    yum update
    clear
    yum install cronie
    systemctl status crond
    systemctl start crond
    crontab -e
    systemctl status crond
    cat /tmp/cron_text

```

Login into the server 
- ![alt text](image.png)

Sudo not working so check the os using cat /etc/os-release
- ![alt text](image-1.png)

Install cronie
- ![alt text](image-2.png)

check the crond status and start it. 
- ![alt text](image-3.png)

check the status
- ![alt text](image-5.png)

Add cron job.
- ![alt text](image-4.png)

Added on all servers.
- ![alt text](image-6.png)

## What I Learned

- **cronie** provides the cron daemon used to schedule recurring tasks on Linux.
- The cron service on **CentOS / RHEL systems** is called **crond**.
- The `systemctl` command is used to manage services like starting, enabling, and checking the status of cron.
- A **cron job** allows automation of tasks at fixed intervals.
- The cron expression `*/5 * * * *` means the job runs **every 5 minutes**.
- Cron jobs for the root user are managed using the `crontab -e` command.

---

## Notes

### Install cronie
```bash
yum install -y cronie


![alt text](image-7.png)