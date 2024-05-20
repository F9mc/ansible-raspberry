# dotfiles

## Start up script

Linux:
```sh
curl https://github.com/F9mc/dotfiles/blob/main/start.sh | bash
```

Windows:
```ps1
Invoke-WebRequest -Uri "https://github.com/F9mc/dotfiles/blob/main/start.ps1" -OutFile "$env:TEMP\start.ps1"; Invoke-Expression "$env:TEMP\start.ps1"
```

## Update config

```sh
git pull
ansible-playbook -K bootstrap.yml
```


## Acknowledgement
- https://phelipetls.github.io/posts/introduction-to-ansible/#become