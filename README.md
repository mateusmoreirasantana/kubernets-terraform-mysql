# kubernets-terraform-mysql

## ESD21 - Infrastructure and Cloud Computing 

---------------------------------------------------------------------------------------------------------------

## Exercício Aula 04

## Atividade

>Subir dois pods, nginx e mysql, mapeando a porta 80 do nginx para acesso externo ao cluster e permitir que o contêiner do nginx tenha comunicação de rede no contêiner mysql pela porta 3306. 
A atividade pode ser feita localmente (minikube), AKS (Azure), EKS (AWS) ou no GKE (GCP). 
Se quiser criar o cluster nuvem Kubernetes com Terraform é opcional.
## Tecnologias utilizadas

- [Terraform](hhttps://www.terraform.io/) - Ferramenta de provisionamento
1
- [Azure](https://www.azure.microsoft.com/) - Provider

- [MySQL](https://www.mysql.com/) - Banco de dados.
- [Kubernets](https://kubernetes.io/) - Orquestrador de containers

## Pre Requisitos

- [terraform](https://www.terraform.io/downloads.html)

- [az cli](https://docs.microsoft.com/pt-br/cli/azure/install-azure-cli)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)

## Instalação 


    1 - criar uma pasta em sua maquina.<br/>
    2 - Clonar o repositório: "https://github.com/mateusmoreirasantana/kubernets-terraform-mysql".  <br/>
    3 - Executar o comando "az login" para logar em sua conta na azure<br/>
    4 - Executar o comando "terraform init" para iniciar o terraform.  <br/>

    5 - Executar o comando "terraform plan" e se tudo estiver correto executar o comando "terraform apply" para criar seu resource group e o kubernets cluster.  <br/>



## Subir a aplicação e o banco de dados para o cluster:


    1 - Executar o comando "az aks get-credentials --resource-group ResouceGroupES21Kubernets --name aksES21" para conectar ao cluster<br/>
    2 - Executar o comando "kubectl apply -f \pods\" para subir os pods.  <br/>
    3 - Executar o comando "kubectl apply -f \service\" para subir os serviço.  <br/>
    4 - Executar o comando "kubectl get all" para obter o ip publico e no navegador acesse pelo ip publico a aplicação <br/>