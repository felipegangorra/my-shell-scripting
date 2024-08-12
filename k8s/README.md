### Preparando kubeadm (k8s)

obs: faça no control e nos workers. Depois vai precisar fazer a ligação entre eles com o join.

Passe o script para a vm usando o exemplo a baixo (mude os valores):
``` bash
sudo scp -i felipegangorra.pem kubeadm_script.sh ubuntu@10.5.9.241:/home/ubuntu 
```

Depois, na vm, execute o sh:
``` bash
bash kubeadm.sh
```