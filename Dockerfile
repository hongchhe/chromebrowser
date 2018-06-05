FROM       hongchhe/ubuntu-python3
MAINTAINER Hongchuang <hehongchuang@hotmail.com>

RUN        apt install wget \
        && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
        && echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list \
        && apt-get update \
        && apt-get install google-chrome-stable \
        && pip install --upgrade pip \
        && pip install selenium

