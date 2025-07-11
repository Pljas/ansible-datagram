# Ansible Datagram

Проект для управления Datagram CLI.

## Быстрый старт

1. **Настройте серверы**

   Отредактируйте `inventory/hosts.yml`:

   ```yaml
   all:
     children:
       datagram_servers:
         hosts:
           server1:
             ansible_host: 192.168.1.100
             ansible_port: 22
             ansible_user: root
             ansible_ssh_private_key_file: ~/.ssh/id_ed25519
             datagram_license_key: "YOUR_LICENSE_KEY"
   ```

2. **Проверьте соединение**

   ```bash
   ansible all -m ping
   ```

3. **Разверните приложение**

   ```bash
   make deploy
   ```

4. **Проверьте статус**

   ```bash
   make status
   ```

## Управление

- `make deploy` - развернуть приложение
- `make update` - обновить приложение, если доступна новая версия
- `make status` - проверить статус
- `make remove` - удалить приложение
- `make lint` - проверить код

Для выполнения на конкретном сервере используйте флаг `--limit`:

```bash
ansible-playbook playbooks/deploy.yml --limit server1
```

## Требования

- **Ansible**: 2.9+
- **ОС**: Ubuntu 18.04+ / Debian 10+
- **SSH**: доступ по ключу
- **Права**: sudo/root на целевых серверах
