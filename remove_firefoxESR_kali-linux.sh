#!/bin/bash
if [ "$(id -u)" -ne 0 ]; then
    echo "Этот скрипт нужно запускать с правами суперпользователя. Используйте sudo."
    exit 1
fi

apt-get purge firefox-esr -y

# Удаляем все конфигурационные файлы и директории
rm -rf ~/.mozilla/firefox
rm -rf ~/.cache/mozilla/firefox
rm -rf /etc/firefox
rm -rf /usr/lib/firefox
rm -rf /usr/lib/firefox-esr
rm -rf /usr/share/firefox
rm -rf /usr/share/firefox-esr
rm -rf /var/cache/mozilla/firefox
rm -rf /var/lib/mozilla/firefox
rm -rf /var/log/firefox

apt-get autoremove -y

echo "Firefox ESR полностью удален."
