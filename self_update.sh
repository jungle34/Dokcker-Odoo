set github_username "jungle34"
set github_password "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"
set repo_url "https://github.com/jungle34/OdooPersonalDev.git"

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

spawn chown odoo:odoo -R /var/lib/odoo/addons/17.0/
