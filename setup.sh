#!/bin/bash

# Função para exibir animação enquanto um comando está sendo executado
spin()
{
    spinner="/|\\-/|\\-"
    while :
    do
        for i in `seq 0 7`
        do
            echo -en "\e[1;34m.\e[1;33m.\e[1;31m.\e[0m ${spinner:$i:1}" "\r"
            sleep 0.2
        done
    done
}

# Iniciar a animação
spin &
SPIN_PID=$!

# Verificar qual sistema está sendo usado
if [ -f /etc/manjaro-release ]; then
    SYSTEM="Manjaro"
    COLOR="\e[1;32m"
elif [ -f /etc/arch-release ]; then
    SYSTEM="Arch"
    COLOR="\e[1;34m"
elif [ -f /etc/alpine-release ]; then
    SYSTEM="Alpine"
    COLOR="\e[1;33m"
else
    SYSTEM="Desconhecido"
    COLOR="\e[1;37m"
fi

# Exibir mensagem com a cor apropriada
echo -en "${COLOR}Executando no sistema ${SYSTEM}\e[0m\n"

# Atualizar o sistema
echo -n "    Atualizando o sistema  "
if [ -x "$(command -v apt-get)" ]; then
    apt-get update -y > /dev/null 2>&1
    apt-get upgrade -y > /dev/null 2>&1
elif [ -x "$(command -v yum)" ]; then
    yum update -y > /dev/null 2>&1
elif [ -x "$(command -v pacman)" ]; then
    pacman -Syu --noconfirm > /dev/null 2>&1
elif [ -x "$(command -v apk)" ]; then
    apk update > /dev/null 2>&1
    apk upgrade > /dev/null 2>&1
fi

# Instalar Ruby e lolcat
echo -n "    Instalando Ruby e lolcat "
if [ -x "$(command -v apt-get)" ]; then
    apt-get install ruby -y > /dev/null 2>&1
    gem install lolcat > /dev/null 2>&1
elif [ -x "$(command -v yum)" ]; then
    yum install ruby -y > /dev/null 2>&1
    gem install lolcat > /dev/null 2>&1
elif [ -x "$(command -v pacman)" ]; then
    pacman -S ruby --noconfirm > /dev/null 2>&1
    gem install lolcat > /dev/null 2>&1
elif [ -x "$(command -v apk)" ]; then
    apk add ruby ruby-dev ruby-rdoc ruby-irb build-base libffi-dev zlib-dev libxml2-dev libxslt-dev readline-dev yaml-dev sqlite-dev openssl-dev git nodejs yarn tzdata bash curl wget nano vim less htop procps util-linux coreutils findutils grep sed gawk tar gzip bzip2 xz unzip zip ca-certificates ncurses ncurses-libs ncurses-terminfo ncurses-terminfo-base ncurses5-libs openssh-client openssh-keygen openssh-server openssh-sftp-server openssh sshpass rsync screen tmux byobu mc lftp bind-tools dnsutils whois make cmake autoconf automake patch diffutils binutils bison flex m4 libtool pkgconf fakeroot sudo shadow su-exec doas envsubst gettext aspell aspell-en aspell-de aspell-es aspell-fr aspell-it aspell-pt aspell-pt-br aspell-pt-pt aspell-ru aspell-uk jq yq go python3 python3-dev py3-pip py3-wheel py3-setuptools py3-virtualenv py3-virtualenvwrapper py3-pygments py3-docutils py3-sphinx py3-cryptography py3-bcrypt py3-nacl py3-paramiko ansible terraform packer vault consul nomad docker docker-compose podman buildah skopeo runc cni-plugins containerd nerdctl lxc lxd cri-o kubectl helm kubeadm minikube kind k9s lens octant kubectx kubens stern kube-ps1 kube-prompt kubetail popeye kube-score kube-linter kubeval kube-hunter kube-bench kube-capacity kube-state-metrics metrics-server prometheus prometheus-node-exporter prometheus-pushgateway prometheus-alertmanager grafana grafana-image-renderer grafana-agent grafana-loki grafana-tempo jaeger jaeger-agent jaeger-collector jaeger-query jaeger-ingester opentelemetry-collector opentelemetry-collector-contrib opentelemetry-proto opentelemetry-go opentelemetry-go-contrib opentelemetry-java opentelemetry-javaagent opentelemetry-java-contrib opentelemetry-java-instrumentation opentelemetry-python opentelemetry-python-contrib opentelemetry-dotnet opentelemetry-dotnet-contrib opentelemetry-ruby opentelemetry-ruby-contrib opentelemetry-php opentelemetry-php-contrib opentelemetry-js opentelemetry-js-contrib fluent-bit fluentd vector datadog-agent datadog-cluster-agent datadog-operator newrelic-infra newrelic-infra-operator newrelic-logging newrelic-kubernetes-events newrelic-kubernetes-metadata-injection sysdig sysdig-inspect sysdig-falco sysdig-falco-driver-loader sysdig-operator sysdig-image-analyzer falco falco-driver-loader falco-exporter falco-operator falco-sidekick falcosidekick-ui falcoctl falcosniff falco-tester falco-builder falco-driverkit falco-profiler falco-trace files-from-k8s tracee tracee-rules tracee-ebpf tracee-bpftrace tracee-aio tracee-benchmark tracee-fuzzer tracee-signatures tracee-webhook bpftrace bcc bcc-tools libbpf bpf bpfcc bpftool bpftrace-tools gobpf cilium cilium-cli cilium-operator cilium-etcd-operator cilium-hubble hubble hubble-ui hubble-relay isovalent isoviz isocheck isocli isocni isomesh isomonitor isohealth isostatus isoupgrade isoreload isorestart isostop isostart isoenable isodisable isoinit isoinspect isologs isoversion isohelp isodoc isoman isoagent isoserver isoclient isoproxy isobridge isorouter isonat isofirewall isoidentity isoauth isoaccess isoaudit isotrace isometrics isometrics-server isometrics-agent isometrics-cli isometrics-ui isometrics-dashboards isometrics-alerts isometrics-logs isometrics-traces isometrics-profiles isometrics-configs > /dev/null 2>&1
    gem install lolcat > /dev/null 2>&1
fi
sleep 2
echo "press enter"
# Criar diretórios para Minecraft Bedrock e Java
echo -n "    Criando diretórios para Minecraft Bedrock e Java "
mkdir MC/bedrock > /dev/null 2>&1
mkdir MC/java > /dev/null 2>&1

# Instalar OpenJDK e wget
echo -n "    Instalando OpenJDK e wget "
if [ -x "$(command -v apt-get)" ]; then
    apt-get install default-jdk wget -y > /dev/null 2>&1
elif [ -x "$(command -v yum)" ]; then
    yum install java-latest-openjdk wget -y > /dev/null 2>&1
elif [ -x "$(command -v pacman)" ]; then
    pacman -S jre-openjdk wget --noconfirm > /dev/null 2>&1
elif [ -x "$(command -v apk)" ]; then
    apk add openjdk11 wget > /dev/null 2>&1
fi

echo "Preparando para instalar os recursos para o servidor para o minecraft bedrok/Java"
sleep 5

# Adicionar alias para o comando MC
echo alias MC="./MC-B-J/menu.sh" >> ~/.bashrc

filename=".bashrc"

# Verificar se o arquivo existe
if [ -e "$filename" ]; then
    # Exibir mensagem se o arquivo existir
    echo "O arquivo $.bashrc nao existe alternando para zsh."
else
    # Exibir mensagem se o arquivo não existir
    echo alias MC="./MC-B-J/menu.sh" >> ~/.zshrc
fi

# Baixar servidor do Minecraft Java Edition 
cd MC-B-J/java 
wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar 

# mensagem sobre plugins 
echo "If you want to use plugins or servers clients you need to install a vm of any linux distribution to use the most updated java/openjdk" 
sleep 7

# Corrigir nome do arquivo 
if [ -e server.jar.1 ] 
then 
    mv server.jar.1 server.jar 
fi

# Exibir mensagem para o usuário
echo -e "Use the command MC to access the main menu"
sleep 7
# Parar a animação
kill $SPIN_PID
