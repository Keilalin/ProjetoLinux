## Configurando o Linux
    Requisitos:
        - Configurar NFS
        - Criar diretorio nominal
        - Subir e configurar o Apache
        - Criar e executar o script com status do Apache
        - Configurar execucação automatizada do script

### Configurando NFS
1. Logar a instância e atualizar utilizando o comando: 

        sudo yum update

2. Instalar o utilitario nfs-utils

        sudo yum install nfs-utils

3. Iniciar o serviço NFS

        service nfs start


### Criar diretório nominal
1. Criar um diretório com seu nome
        mkdir /usuario

2. Exportar essa pasta editando o arquivo /etc/exports

        /usuario *(ro)
        /usr/sbin/exportfs -rav


### Subir e configurar o Apache
1. Instalar e iniciar o Apache
        yum install httpd
        systemctl start httpd

2. Verificar se o Apache está rondando
        systemctl status httpd

### Criar e executar o script com status do Apache
1. Navegar até o diretório que irá conter o script
            
        cd /usuario

2. Criar um script com seu editor de preferência e incluir o conteudo desejado

        vim script-desejado.sh

3. Tornar o scripi executável

        chmod +x script-desejado.sh

### Configurar execucação automatizada do script
1. Editar a lista de tarefas com o comando:

        crontab -e

2. Adicionar a tarefa a ser realizada

        */5 **** /usuario/script-desejado.sh

Para verificar se o agendamento foi feito corretamente utilizar o comando a seguir:

        crontab -l


