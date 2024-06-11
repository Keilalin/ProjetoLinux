## Preparando o Ambiente AWS

### Criando uma chave pública
1. Acessar a console da AWS na parte de EC2
2. Em Key Pairs, create Key Pair: definir um nome, o tipo de chave, o formato da chave, criar tags se desejar e criar a chave.

### Criando uma Instância Linux
1. Acessar a console da AWS na parte de EC2
2. Em Instances, Launch an Instance: definir o nome e as tags que desejar, qual AMI irá inicializar, o tipo da instância, seleciona a chave de segurança criada anteriormente, define as configurações de rede[^1^], as configurações de armazenamento e finaliza em Launch instance.

### Criando e Associando um Elastic IP
1. Acessar a console da AWS na parte de EC2
2. Em Elastic IP, Allocate Elastic IP Address: seleciona a mesma região da instância criada anteriormente, define tags se desejar e finaliza em Allocate.
3. Seleciona o Elastic IP recém criado e em Actions seleciona Associate Elastic IP, escolhe a instância que gostaria de associar e finaliza em Associate.

<h2 align="center">Sua instância está pronta para ser acessada!</h2>


[^1^]: Aqui pode incluir quais as regras de trafego desejadas, porém é possível definir dentro da seção de Security Groups, caso necessite algum ajuste.
