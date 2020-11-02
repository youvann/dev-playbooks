# dev-playbooks

## Setup playbook

```bash
ansible-playbook ~/dev-playbooks/setup.yml --tags <tags>
```

See [tags](#tags) section for available tags.

### Install ubuntu packages

```sh
ansible-playbook ~/dev-playbooks/playbooks/setup.yml --tags pkg --ask-become-pass

# or

ansible-playbook ~/dev-playbooks/playbooks/setup.yml --tags pkg --extra-vars "ansible_sudo_pass=<your_password>"
```

### Install tuning tools (i3, rofi and color-scheme-terminal)

```sh
ansible-playbook ~/dev-playbooks/playbooks/setup.yml --tags tuning --ask-become-pass
```

## Tags

* `color-scheme-terminal` [tuning] 
* `dotfiles`              [base]   
* `i3`                    [tuning]
* `jetbrains-toolbox`     [tuning]
* `rofi`                  [tuning]
* `pkg`                   [base]   
* `python`                [base]

`base` and `tuning` are also valid tags. Use them in order to install several items.