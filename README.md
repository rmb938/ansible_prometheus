# ansible_prometheus
Ansible to Install [Prometheus](https://prometheus.io/) on Ubuntu

## Requirements

## Requirements

* Tailscale installed and configured for ssh
    ```bash
    sudo tailscale up --hostname "$(hostname -f | awk -F"." '{print $3}')-$(hostname -f | awk -F"." '{print $2}')-$(hostname)" --ssh --advertise-tags "tag:servers,tag:cloud-$(hostname -f | awk -F"." '{print $3}')-region-$(hostname -f | awk -F"." '{print $2}'),tag:prometheus"
    ```

## Run

```bash
ansible-playbook -i hosts site.yaml -v --diff
```