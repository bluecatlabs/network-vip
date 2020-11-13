## Three options for installation

Change _/path/to_ in the following steps to match the exact location of the script.

Choose one of the following:

1. Copy the script to _/etc/cron.minutely_

2. Copy the script to the DNS server. Create a file in _/etc/cron.d_ with the following syntax:

    ```
    * * * * *    root    /path/to/icmp_ratelimit.sh >/dev/null 2>&1
    ```

3. Create a user cron entry while using `crontab -e`

    ```
    * * * * *    /path/to/icmp_ratelimit.sh >/dev/null 2>&1
    ```

And finally, make sure the script is executable. 

```
chmod +x /path/to/icmp_ratelimit.sh
```

## Other links

- [Bleeping Comptuer](https://www.bleepingcomputer.com/news/security/dns-cache-poisoning-attacks-return-due-to-linux-weakness/)
- [Ars Technica article](https://arstechnica.com/information-technology/2020/11/researchers-find-way-to-revive-kaminskys-2008-dns-cache-poisoning-attack/)
- [Sad DNS](https://789498207.www.saddns.net/)
- [the paper](https://dl.acm.org/doi/pdf/10.1145/3372297.3417280)
- [Kernel commit](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/net/ipv4/icmp.c?h=v5.10-rc3&id=b38e7819cae946e2edf869e604af1e65a5d241c5)

BlueCat's open community for networking professionals is free to join at [bit.ly/networkvip](https://bit.ly/networkvip)
