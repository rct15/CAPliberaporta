# CAP`liberaporta`

Atalho para liberação de porta no SELinux  

Conferiu se o serviço está rodando direitinho, se as regras de exceção no firewall foram incluídas, e você só consegue acessar o serviço localmente, não consegue em uma máquina na mesma rede e/ou externa? Então, em algumas distribuições Linux mais sérias para utilização profissional possuem uma ferramenta de segurança que se chama SELinux, o qual todo acesso à máquina hospedeira é restrita, e apenas os acessos incluídos são autorizados a responder acessos externos, mais conhecido como Whitelist. A Wikipedia diz:
> Security-Enhanced Linux (SELinux) é um módulo de segurança do kernal Linux que provê um mecanismo de suporte a política de controle de acessos, incluindo controle de acesso obrigatório (em inglês, mandatory access controls - MAC).

No meu caso eu estou testando ferramentas de _AI_ para minha [home-assistant (HASS)](https://www.home-assistant.io/), a [LLM Llama 3.2 `ollama`](https://ollama.com/), [transcrição de audio com `faster-whisper`](https://docs.linuxserver.io/images/docker-faster-whisper/) e [respostas de voz a partir de texto com o `piper`](https://github.com/linuxserver/docker-piper) e, ainda que a _HASS_ esteja rodando em um Raspberry PI 3B+, preciso de processamento mais bruto para conseguir rodar essas _AIs_, que estou fazendo em outro servidor na minha rede. Se ainda tiver curioso, estou usando o `Centos9` e `docker`. Como preciso de acesso externo ao servidor, mesmo que seja na minha rede local, é necessário adicionar cada porta de cada serviço especificamente, ou adicionar a aplicação às exceções do `SELinux`, o que talvez eu o faça quando resolver que é hora do _commit_ para "produção".

Meu `iptables` está configurado para aceitar todas as conexões da rede local, mas futuramente estará bloqueado em todas as portas, exceto as liberadas (DROP), então, atualizarei este script para também incluir as regras do `iptables`, além de checagem/validação das entradas

# Como usar:                                       
Configure permissão de execução:               
> `sudo chmod +x ./liberaporta.sh`
            
Execute:

>  `./liberaporta.sh PORTA` (1-65535)

O script solicitará a senha de usuário para continuar (sudo)

# Versão 0.1a                                     
 Feito por ✪ Lima 立馬沒                         
 21 de novembro de 2024                          
 Capivara REPUBLICA - capivararepublica.com.br    
