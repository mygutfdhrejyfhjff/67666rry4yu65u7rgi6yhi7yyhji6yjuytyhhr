echo "java11 распоковка"
unzip ui.zip
set -e

if [ ! -f ~/.ssh/id_rsa ]; then
    echo "🔑 Генерируем SSH‑ключ..."
    ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ""
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

