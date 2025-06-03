import os
from dotenv import load_dotenv
load_dotenv('./common/.env', encoding="utf-8")
load_dotenv()
os.CPF = os.getenv('CPF')
os.CPF_INVALIDO = os.getenv('CPF_INVALIDO')
os.CPF_INEXISTENTE = os.getenv('CPF_INEXISTENTE')
os.DB_HOST = os.getenv('DB_HOST')

print(os.CPF, os.DB_HOST)