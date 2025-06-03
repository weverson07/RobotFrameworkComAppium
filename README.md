# 🤖 Robot Framework com Appium

Este repositório contém uma estrutura de automação de testes para aplicações mobile Android utilizando o **Robot Framework** com **Appium**.

## 📌 Objetivo

Automatizar testes funcionais em aplicações móveis, promovendo confiabilidade, reusabilidade de código e integração com ferramentas modernas de QA.

---

## ⚙️ Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/)
- [Appium](https://appium.io/)
- [Python 3.9+](https://www.python.org/)
- [Android SDK ou Genymotion](https://developer.android.com/studio)
- [Emulador Android ou dispositivo real]

---

## 📁 Estrutura do Projeto

```
RobotFrameworkComAppium/
├── tests/                 # Casos de teste
├── resources/             # Keywords e variáveis reutilizáveis
├── page_objects/          # Lógica encapsulada de telas
├── results/               # Logs e relatórios dos testes
├── app/                   # APKs de teste
├── requirements.txt       # Lista de dependências
├── robot.sh / robot.bat   # Scripts de execução
└── README.md              # Documentação do projeto
```

---

## 🚀 Como Executar

### 1. Clone o repositório

```bash
git clone https://github.com/weverson07/RobotFrameworkComAppium.git
cd RobotFrameworkComAppium
```

### 2. Crie um ambiente virtual e ative

```bash
python -m venv .venv
source .venv/bin/activate   # Linux/macOS
.venv\Scripts\activate    # Windows
```

### 3. Instale as dependências

```bash
pip install -r requirements.txt
```

### 4. Inicie o servidor Appium

```bash
appium
```

### 5. Execute os testes

```bash
robot -d results tests/
```

Ou usando os scripts prontos:

```bash
sh robot.sh        # Linux/macOS
robot.bat          # Windows
```

---

## 🧪 Exemplo de Teste

```robot
*** Test Cases ***
Login Com Sucesso
    Abrir Aplicativo
    Preencher Usuario    weverson
    Preencher Senha      123456
    Clicar Entrar
    Verificar Mensagem   Bem-vindo, weverson
```

---

## 📊 Relatórios

Após a execução, os arquivos são gerados na pasta `results/`:

- `log.html`: Detalhes dos testes
- `report.html`: Resumo da execução
- `output.xml`: Log para integração contínua

---

## 📞 Contato

Desenvolvido por **Weverson Silva**  
📧 weverson.silva.dev@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/weversonsilva)

---

## 📝 Licença

Distribuído sob a licença MIT. Veja `LICENSE` para mais informações.
