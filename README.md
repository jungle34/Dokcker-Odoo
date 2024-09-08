```shell
sudo docker build -t personal/odoo .
```

```shell
sudo docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name db postgres:15
```

```shell
sudo docker run -d -p 8069:8069 --name odoo --link db:db -t personal/odoo
```
