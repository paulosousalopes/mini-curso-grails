Minicurso de Grails
=================

Encoinfo 2013 - 21 a 25/10/2013 - Palmas, Tocantins, Brasil
http://ulbra-to.br/encoinfo

Instalação do Grails para Linux e Mac
Requisitos: JDK e Grails

vim ~/.bashrc ou vim ~/.profile

#O java home deve ser adicionado ao PATH

Adição do Java ao PATH do sistema 
export JAVA_HOME=/home/paulo/jdk1.7.0_40/
export PATH=$PATH:$JAVA_HOME/bin 

Adição do Grails no PATH
export PATH=~/grails/bin:$PATH
export GRAILS_HOME=~/grails

Instalação do GVM
apt-get install curl
curl -s get.gvmtool.net | bash
source "$HOME/.gvm/bin/gvm-init.sh"

Instalação do Groovy com GVM
gvm install groovy
gvm use groovy

Instalação do Grails com GVM
gvm install grails
gvm use grails 2.30



