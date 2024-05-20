# dotfiles

## Start up script

Linux:
```sh
curl https://raw.githubusercontent.com/F9mc/dotfiles/main/start.sh | bash
```

Windows:
```ps1
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/F9mc/dotfiles/main/start.ps1" -OutFile "start.ps1"
.\start.ps1
```

## Update config

```sh
git pull
ansible-playbook -K bootstrap.yml
```


## Acknowledgement
- https://phelipetls.github.io/posts/introduction-to-ansible/#become