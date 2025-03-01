# my-zsh
zsh configs and fonts

# install zsh
```
sudo apt install zsh
```

```
yum install zsh
```

```
epm install zsh
```


# install (overwrite configs)
```
git clone https://github.com/vajrock/my-zsh.git ~/my-zsh
yes | cp -rf  ~/my-zsh/.zshrc ~/.zshrc
yes | cp -rf  ~/my-zsh/.p10k.zsh ~/.p10k.zsh
mkdir -p ~/.fonts
yes | cp -rf ~/my-zsh/.fonts ~/.fonts
rm -rf ~/my-zsh
git clone https://github.com/zplug/zplug ~/.zplug
```

## change default shell
```
sudo chsh -s /bin/zsh
```
### OR
```
sudo usermod -s /bin/zsh $USER
```

### OR without sudo

```
cat <<EOF >> ~/.bash_profile
export SHELL=/usr/bin/zsh
exec /usr/bin/zsh -l
EOF
```