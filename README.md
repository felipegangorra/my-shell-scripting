# Configuração do shell

### Preparando Zsh

Instalando o zsh:

``` bash
sudo apt install zsh
```
Tornando zsh padrão (precisa fazer logout):

``` bash
chsh -s $(which zsh)
```
Instalando Oh my Zsh:

``` bash
# pacotes necessarios
sudo apt install curl git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Adicionando tema

Abra o arquivo zshrc:

``` bash
code ~/.zshrc
```

Passe o conteúdo do arquivo my-shell para o zshrc!

---

### Preparando Bash

Pelo terminal abra o bashrc:
``` bash
code ~/.bashrc
```

Cole o thema no arquivo e salve.
Atualize o bash:

``` bash
source ~/.bashrc
```

---

### Preparando kubeadm (k8s)

Passe o script para a vm usando o exemplo a baixo (mude os valores):
``` bash
sudo scp -i felipegangorra.pem kubeadm_script.sh ubuntu@10.5.9.241:/home/ubuntu 
```

Depois, na vm, execute o sh:
``` bash
bash kubeadm.sh
```



