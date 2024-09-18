```shell
sudo docker build -t personal/odoo .
```

```shell
sudo docker run -p 5432:5432 -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name db --network=odoo postgres:15
```

```shell
sudo docker run -v $HOME/odoo/addons:/var/lib/odoo/addons/17.0/ -d -p 8069:8069 --name odoo --network=odoo -t personal/odoo
```
