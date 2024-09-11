#!/usr/bin/expect -f

set github_username "your_git_hub_username"
set github_password "**your_git_hub_personal_token**"
set repo_url "**your_addons_repository_link**"
set container_name "docker_container_name"

# Executa o git pull
spawn git pull
expect {
    "Username for 'https://github.com':" {
        send "$github_username\r"
        exp_continue
    }
    "Password for 'https://$github_username@github.com':" {
        send "$github_password\r"
    }
}

# Espera o git pull concluir
expect eof

# Remover comentário quando script executado no mesmo container do repositório
# spawn chown odoo:odoo -R /var/lib/odoo/addons/17.0/
spawn docker exec -u 0 -it odoo "$container_name\r" -u -d "all"

expect "$container_name\r"
