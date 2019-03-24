#!/bin/bash
sudo cp maricotatts-generic.conf /etc/speech-dispatcher/modules/
sudo cp speechd.conf /etc/speech-dispatcher/
sudo pacman -S espeak-ng speech-dispatcher orca onboard
sudo pacman -U mbrola-3.0.1h-5-x86_64.pkg.tar.xz
sudo pacman -U mbrola-voices-br4-1-2-any.pkg.tar.xz
speak-ng -v mb/mb-br4 -s 124 -a 200 "instalação da Maricota TTS, concluída com sucesso."
