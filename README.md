*Sharing the World's Free Knowledge*

# Internet-in-a-Box (IIAB) MINI

[Internet-in-a-Box (IIAB)](https://internet-in-a-box.org) is a “learning hotspot” that brings the Internet's crown jewels
(Wikipedia in any language, thousands of Khan Academy videos, zoomable OpenStreetMap, electronic books, WordPress journaling, “Toys from Trash” electronics projects, ETC) to those without Internet.

This is a MINI version of that, scaled down for more generic use.

What I don't like about IIAB: 
1. The admin interface.  
2. It tries to install stuff most people don't need.
3. It offers stuff no longer working or maintained.
4. Poor security on admin interface.
5. Lacks packages I do want (like a more usable offline email server)

The goals include:

# Basic Default Install (Minimal)
Let's move from "learning hotspot" to a more robust and versitile Raspberry Pi server that can be use for that and much, much more, both offline and online.  To do this, we begin with a minimal starting point. 
## Full Featured Default Server
* OS
* Config Management
* Auto-mount USB drives
* Admin Interface
* MariaDB
* DNSmasq
* RaspAP
* nodogsplash
* MariaDB
* Apache
* Postfix
* Dovecot
* WordPress MU
* NextCloud
* TAK Server

# New Admin system for configuration
Let's face it: The web admin interface is really clunky. Let's add:
0. Consider changing from Ansible to Salt since Ansible on IIAB takes a long time for every little change. Perhaps Docker? https://docs.saltproject.io/en/latest/topics/tutorials/quickstart.html#salt-masterless-quickstart:~:text=index-,SALT%20MASTERLESS%20QUICKSTART,-Running%20a%20masterless
1. Secure connection via SSL/https
2. User Management with role based access control. (Can we make this usable system-wide?)
3. System and Network configuration everyone can understand.
4. Sub-pages based on what roles and software is installed.
5. New Software configuration system. (I envision a searchable interface that offers "Roles" (such as "Web Server", "File Server", "Email Server", etc. and for each role is a default software plus basic and advanced options.)
# User Management
1. Make one or select one.
2. Integrate it with the services that need users. 
# Server Roles
0. Main
  * Easy Wizards for Common Config Scenerios
  * OS confiserations
     * User Management
     * Hardware / external disks
  * Networking
    * Mesh
    * LORA
  * Software Sources
  * Updates
  * etc
1. Web Server
   * (Default) Apache (latest)
   * NginX
   * etc.
2. Database Server
   * (Default) MariaDB (Latest)
3. WordPress / WordPress MU
   * (Default) WordPress MU, Hostname based
4. WiFi Router/AP
   * RaspAP?
5. Captive Portal (RaspAP has one but you need to pay them for it.)
  * nodogsplash
6. DNS
   * Dnsmasq
   * BIND
8. Email Server
  * Postfix/Dovecot Offline ONLY https://gist.github.com/raelgc/6031274
  * Postfix/Dovecot Sneakernet (requires dynamic DNS)
9. File Server
  * SAMBA
10. DHCP Server
11. NextCloud
12. MQTT? TAK? Video Conferencing?  
