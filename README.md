# Install and run odoo easily

You just need to install docker on your machine, I recommend docker hub if you have a windows machine
After installing docker, do a "git clone" or download the repository and run the commands below

```shell
docker build -t personal/odoo /path/to/dockerfile
```
* Remember to replace /path/to/dockerfile

```shell
docker run -p 5432:5432 -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name db postgres:15
```
* The above command will start the database container. In the case of postgresql, we will not need to mount the image first as it does not require the installation of additional packages
* Remember to modify access credentials to optimize security.
	* Replace the following parameters:
		* POSTGRES_USER
		* POSTGRES_PASSWORD -> especially this one
		* POSTGRES_DB

```shell
docker run -v /path/to/custom_addons:/var/lib/odoo/addons/17.0/ -d -p 8069:8069 --name odoo -t personal/odoo
```
* In this last step, just run the container with the image mounted in the first command. Remember to change /path/to/custom_addons to your directory path (only change the path /var/lib/odoo/addons/17.0/ if you don't need to implement custom modules)

Now just access your Odoo environment via http://localhost:8069
