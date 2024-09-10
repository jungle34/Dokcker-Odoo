#!/bin/bash

echo "Digite o username do github:"
read username
echo "Digite o personal token do github:"
read token
echo "Digite o link do repositório:"
read repo

sed -i "s/your_git_hub_username/$username/g" self_update.sh