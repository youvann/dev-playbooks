# dev-playbooks

Setup macOS / ubuntu development environment with ansible playbooks

```bash
ansible-playbook ~/dev-playbooks/setup.yml --tags <tags>
```

Tags :

* common
* homebrew
* homebrew_cask
* yabai

## Ubuntu playbook

```sh
# install ubuntu packages
ansible-playbook ~/dev-playbooks/playbooks/ubuntu_setup.yml --tags os --ask-become-pass
ansible-playbook ~/dev-playbooks/playbooks/ubuntu_setup.yml --tags os --extra-vars "ansible_sudo_pass=<your_password>"

# install dotfiles on ubuntu
ansible-playbook ~/dev-playbooks/playbooks/ubuntu_setup.yml --tags dotfiles
```