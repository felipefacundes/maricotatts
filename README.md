# Maricota TTS

Maricota TTS é um sintetizador de voz, em **português do Brasil**, que lê telas para portadores de deficiência visual. Transforma texto em áudio, permitindo que pessoas cegas ou com baixa visão tenham acesso ao conteúdo exibido na tela. Embora o principal público-alvo de sistemas de conversão texto-fala – como o Maricota TTS – seja formado por pessoas com deficiência visual, esse tipo de programa pode ser usado por pessoas com dislexia e outras dificuldades de leitura, pessoas com deficiência severa de fala, bem como por crianças pré-alfabetizadas. Além de ser uma ferramenta de tecnologia assistiva, sintetizadores de voz podem ter ainda aplicações pedagógicas e de entretenimento.
Está sob a égide da **licença**:
### GPLv3

#
### Instalação

    git clone https://github.com/felipefacundes/maricotatts
    cd maricotatts
    
 - **Você poderá executar:**
 
    sh INSTALL.sh
    
##### Ou, manualmente:

    sudo cp maricotatts-generic.conf /etc/speech-dispatcher/modules/
    sudo cp speechd.conf /etc/speech-dispatcher/
    
#
### Instalação de Dependências:

 - **As Dependências São:**
 - espeak-ng
 - orca
 - onboard

# 
 - **Instalação pelo ArchLinux**
```
sudo pacman -S espeak-ng orca onboard
```
```
sudo pacman -U mbrola-3.0.1h-5-x86_64.pkg.tar.xz
sudo pacman -U mbrola-voices-br4-1-2-any.pkg.tar.xz
```
#
 - **Pelo Debian e derivados:**
 - Caso não tenha o mbrola no repositório.
 - Deverá primeiro, converter os pacotes ".tar.xz" em ".deb"
 - Use o comando alien para converter
 - Após, é só instalar com o comando dpkg
 - **Renomeie** os arquivos ".pkg.tar.xz"
 - Para ".pkg.tar.gz"

```
fakeroot alien -d "nome".pkg.tar.gz
sudo dpkg -i *.deb
```

#### Fedora e derivados: o alien também gera pacotes ".rpm"

    fakeroot alien -r "nome".pkg.tar.gz

#
### Finalizando Instalação

 - Feche tudo e mate a sessão
```
pkill -9 -u $USER
```
 - Inicie o X e digite no terminal
```
orca -s
```
 - mude para maricotatts

#
### Caso o onboard não esteja iniciando, junto com o sistema. Inclua no ~/.xinitrc

    onboard --not-show-in=GNOME,GNOME-Classic:GNOME --startup-delay=3.0 &
    
 - Ou
 
``` 
cp /etc/xdg/autostart/onboard-autostart.desktop ~/.config/autostart/
```
### Ativar o onboard é necessário, para que programas que tenham o recurso de acessibilidade ###
### Como o OKULAR, possam funcionar corretamente. Não deixe de ativar o onboard ###
