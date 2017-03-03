| Install |    Version    |
|---------|---------------|
| Box     | precise64     |
| Python  | 2.7           |
| MySql   | 5.5           |
| Django  | 1.9           |
| Https   | Yes           |
| IP      | 192.168.36.12 |


```
sudo echo "192.168.36.12 myproject.me" >> /etc/hosts
```

###### First Time?

```
vagrant box add precise64 http://files.vagrantup.com/precise64.box
```

###### Vagrant

```
vagrant up --provision
```

```
vagrant reload --provision
```

```
vagrant destroy
```

```
vagrant ssh
#password vagrant
```

###### Enjoy

https://myproject.me

###### Sequal Pro (SSH)

|     Key      |      Val      |
|--------------|---------------|
| Name         | myproject     |
| Username     | root          |
| Password     |               |
| SSH Host     | 192.168.36.12 |
| SSH User     | vagrant       |
| SSH Password | vagrant       |
