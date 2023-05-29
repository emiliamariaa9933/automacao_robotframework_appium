## 👨‍💻 Tecnologias

Para executar localmente, você vai precisar das seguintes ferramentas e tecnologias:

- [Python](https://www.python.org/downloads/)
- [Node.js](https://nodejs.org/en/)
- [Java JDK8](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html)
- [Android Studio](https://developer.android.com/studio/index.html?hl=pt-br)
- [Appium](http://appium.io/downloads.html)
- [Robot Framework](https://robotframework.org/)


## 🔖 Variáveis de ambiente

### No Windows

[![Variáveis de ambiente no Windows](https://youtu.be/ZsOq4xoTid0)

### 🤖 Startar Sevidor Appium e device no Android Studio

Considerando que já tenha o Appium e Android Studio configurados, inicie o Android Studio e selecione um device. Depois inicie o servidor do Appium.


## ▶️ Executar a Automação

Para executar os testes, siga os passos:

1. pip install -r requirements.txt
2. robot -d ./Results -L trace tests


Obs.: O projeto é uma automação simples feita no whatsapp, com a finalidade de validar mensagens de uma AI.