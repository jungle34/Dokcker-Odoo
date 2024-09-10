FROM odoo:latest

USER root
RUN apt-get update && apt-get install -y git expect nano

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

USER odoo
WORKDIR /var/lib/odoo

CMD ["odoo"]
